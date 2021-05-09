package net.crtrpt.whisper;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.crtrpt.whisper.gen.TLBaseVisitor;
import net.crtrpt.whisper.gen.TLLexer;
import net.crtrpt.whisper.gen.TLParser;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.TerminalNode;

public class EvalVisitor extends TLBaseVisitor<TLValue> {
    private static ReturnValue returnValue = new ReturnValue();
    private Scope scope;
    private Map<String, Function> functions;
    //内建函数函数调用
    private Map<String, BuildInFunction> buildFunction = new HashMap<>();

    public EvalVisitor(Scope scope, Map<String, Function> functions) {
        this.scope = scope;
        this.functions = new HashMap<>(functions);
    }

    public EvalVisitor(Scope scope, Map<String, Function> functions, Map<String, BuildInFunction> buildinFunction) {
        this.scope = scope;
        this.functions = new HashMap<>(functions);
        this.buildFunction = buildinFunction;
    }

    // functionDecl
    @Override
    public TLValue visitFunctionDecl(TLParser.FunctionDeclContext ctx) {
        List<TerminalNode> params = ctx.idList() != null ? ctx.idList().Identifier() : new ArrayList<TerminalNode>();
        ParseTree block = ctx.block();
        String id = ctx.Identifier().getText() + params.size();
        // TODO: throw exception if function is already defined?
        functions.put(id, new Function(scope, params, block));
        return TLValue.VOID;
    }

    // list: '[' exprList? ']'
    @Override
    public TLValue visitList(TLParser.ListContext ctx) {
        List<TLValue> list = new ArrayList<>();
        if (ctx.exprList() != null) {
            for (TLParser.ExpressionContext ex : ctx.exprList().expression()) {
                list.add(this.visit(ex));
            }
        }
        return new TLValue(list);
    }


    // '-' expression                           #unaryMinusExpression
    @Override
    public TLValue visitUnaryMinusExpression(TLParser.UnaryMinusExpressionContext ctx) {
        TLValue v = this.visit(ctx.expression());
        if (!v.isNumber()) {
            throw new EvalException(ctx);
        }
        return new TLValue(-1 * v.asDouble());
    }

    // '!' expression                           #notExpression
    @Override
    public TLValue visitNotExpression(TLParser.NotExpressionContext ctx) {
        TLValue v = this.visit(ctx.expression());
        if (!v.isBoolean()) {
            throw new EvalException(ctx);
        }
        return new TLValue(!v.asBoolean());
    }

    // expression '^' expression                #powerExpression
    @Override
    public TLValue visitPowerExpression(TLParser.PowerExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));
        if (lhs.isNumber() && rhs.isNumber()) {
            return new TLValue(Math.pow(lhs.asDouble(), rhs.asDouble()));
        }
        throw new EvalException(ctx);
    }

    // expression op=( '*' | '/' | '%' ) expression         #multExpression
    @Override
    public TLValue visitMultExpression(TLParser.MultExpressionContext ctx) {
        switch (ctx.op.getType()) {
            case TLLexer.Multiply:
                return multiply(ctx);
            case TLLexer.Divide:
                return divide(ctx);
            case TLLexer.Modulus:
                return modulus(ctx);
            default:
                throw new RuntimeException("unknown operator type: " + ctx.op.getType());
        }
    }

    // expression op=( '+' | '-' ) expression               #addExpression
    @Override
    public TLValue visitAddExpression(TLParser.AddExpressionContext ctx) {
        switch (ctx.op.getType()) {
            case TLLexer.Add:
                return add(ctx);
            case TLLexer.Subtract:
                return subtract(ctx);
            default:
                throw new RuntimeException("unknown operator type: " + ctx.op.getType());
        }
    }

    // expression op=( '>=' | '<=' | '>' | '<' ) expression #compExpression
    @Override
    public TLValue visitCompExpression(TLParser.CompExpressionContext ctx) {
        switch (ctx.op.getType()) {
            case TLLexer.LT:
                return lt(ctx);
            case TLLexer.LTEquals:
                return ltEq(ctx);
            case TLLexer.GT:
                return gt(ctx);
            case TLLexer.GTEquals:
                return gtEq(ctx);
            default:
                throw new RuntimeException("unknown operator type: " + ctx.op.getType());
        }
    }

    // expression op=( '==' | '!=' ) expression             #eqExpression
    @Override
    public TLValue visitEqExpression(TLParser.EqExpressionContext ctx) {
        switch (ctx.op.getType()) {
            case TLLexer.Equals:
                return eq(ctx);
            case TLLexer.NEquals:
                return nEq(ctx);
            default:
                throw new RuntimeException("unknown operator type: " + ctx.op.getType());
        }
    }

    public TLValue multiply(TLParser.MultExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));
        if (lhs == null || rhs == null) {
            System.err.println("lhs " + lhs + " rhs " + rhs);
            throw new EvalException(ctx);
        }

        // number * number
        if (lhs.isNumber() && rhs.isNumber()) {
            return new TLValue(lhs.asDouble() * rhs.asDouble());
        }

        // string * number
        if (lhs.isString() && rhs.isNumber()) {
            StringBuilder str = new StringBuilder();
            int stop = rhs.asDouble().intValue();
            for (int i = 0; i < stop; i++) {
                str.append(lhs.asString());
            }
            return new TLValue(str.toString());
        }

        // list * number
        if (lhs.isList() && rhs.isNumber()) {
            List<TLValue> total = new ArrayList<>();
            int stop = rhs.asDouble().intValue();
            for (int i = 0; i < stop; i++) {
                total.addAll(lhs.asList());
            }
            return new TLValue(total);
        }

        throw new EvalException(ctx);
    }

    private TLValue divide(TLParser.MultExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));
        if (lhs.isNumber() && rhs.isNumber()) {
            return new TLValue(lhs.asDouble() / rhs.asDouble());
        }
        throw new EvalException(ctx);
    }

    private TLValue modulus(TLParser.MultExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));
        if (lhs.isNumber() && rhs.isNumber()) {
            return new TLValue(lhs.asDouble() % rhs.asDouble());
        }
        throw new EvalException(ctx);
    }

    private TLValue add(TLParser.AddExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));

        if (lhs == null || rhs == null) {
            throw new EvalException(ctx);
        }

        // number + number
        if (lhs.isNumber() && rhs.isNumber()) {
            return new TLValue(lhs.asDouble() + rhs.asDouble());
        }

        // list + any
        if (lhs.isList()) {
            List<TLValue> list = lhs.asList();
            list.add(rhs);
            return new TLValue(list);
        }

        // string + any
        if (lhs.isString()) {
            return new TLValue(lhs.asString() + "" + rhs.toString());
        }

        // any + string
        if (rhs.isString()) {
            return new TLValue(lhs.toString() + "" + rhs.asString());
        }

        return new TLValue(lhs.toString() + rhs.toString());
    }

    private TLValue subtract(TLParser.AddExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));
        if (lhs.isNumber() && rhs.isNumber()) {
            return new TLValue(lhs.asDouble() - rhs.asDouble());
        }
        if (lhs.isList()) {
            List<TLValue> list = lhs.asList();
            list.remove(rhs);
            return new TLValue(list);
        }
        throw new EvalException(ctx);
    }

    private TLValue gtEq(TLParser.CompExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));
        if (lhs.isNumber() && rhs.isNumber()) {
            return new TLValue(lhs.asDouble() >= rhs.asDouble());
        }
        if (lhs.isString() && rhs.isString()) {
            return new TLValue(lhs.asString().compareTo(rhs.asString()) >= 0);
        }
        throw new EvalException(ctx);
    }

    private TLValue ltEq(TLParser.CompExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));
        if (lhs.isNumber() && rhs.isNumber()) {
            return new TLValue(lhs.asDouble() <= rhs.asDouble());
        }
        if (lhs.isString() && rhs.isString()) {
            return new TLValue(lhs.asString().compareTo(rhs.asString()) <= 0);
        }
        throw new EvalException(ctx);
    }

    private TLValue gt(TLParser.CompExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));
        if (lhs.isNumber() && rhs.isNumber()) {
            return new TLValue(lhs.asDouble() > rhs.asDouble());
        }
        if (lhs.isString() && rhs.isString()) {
            return new TLValue(lhs.asString().compareTo(rhs.asString()) > 0);
        }
        throw new EvalException(ctx);
    }

    private TLValue lt(TLParser.CompExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));
        if (lhs.isNumber() && rhs.isNumber()) {
            return new TLValue(lhs.asDouble() < rhs.asDouble());
        }
        if (lhs.isString() && rhs.isString()) {
            return new TLValue(lhs.asString().compareTo(rhs.asString()) < 0);
        }
        throw new EvalException(ctx);
    }

    private TLValue eq(TLParser.EqExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));
        if (lhs == null) {
            throw new EvalException(ctx);
        }
        return new TLValue(lhs.equals(rhs));
    }

    private TLValue nEq(TLParser.EqExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));
        return new TLValue(!lhs.equals(rhs));
    }

    // expression '&&' expression               #andExpression
    @Override
    public TLValue visitAndExpression(TLParser.AndExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));

        if (!lhs.isBoolean() || !rhs.isBoolean()) {
            throw new EvalException(ctx);
        }
        return new TLValue(lhs.asBoolean() && rhs.asBoolean());
    }

    // expression '||' expression               #orExpression
    @Override
    public TLValue visitOrExpression(TLParser.OrExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));

        if (!lhs.isBoolean() || !rhs.isBoolean()) {
            throw new EvalException(ctx);
        }
        return new TLValue(lhs.asBoolean() || rhs.asBoolean());
    }

    // expression '?' expression ':' expression #ternaryExpression
    @Override
    public TLValue visitTernaryExpression(TLParser.TernaryExpressionContext ctx) {
        TLValue condition = this.visit(ctx.expression(0));
        if (condition.asBoolean()) {
            return this.visit(ctx.expression(1));
        } else {
            return this.visit(ctx.expression(2));
        }
    }

    // expression In expression                 #inExpression
    @Override
    public TLValue visitInExpression(TLParser.InExpressionContext ctx) {
        TLValue lhs = this.visit(ctx.expression(0));
        TLValue rhs = this.visit(ctx.expression(1));

        if (rhs.isList()) {
            for (TLValue val : rhs.asList()) {
                if (val.equals(lhs)) {
                    return new TLValue(true);
                }
            }
            return new TLValue(false);
        }
        throw new EvalException(ctx);
    }

    // Number                                   #numberExpression
    @Override
    public TLValue visitNumberExpression(TLParser.NumberExpressionContext ctx) {
        return new TLValue(Double.valueOf(ctx.getText()));
    }

    // Bool                                     #boolExpression
    @Override
    public TLValue visitBoolExpression(TLParser.BoolExpressionContext ctx) {
        return new TLValue(Boolean.valueOf(ctx.getText()));
    }

    // Null                                     #nullExpression
    @Override
    public TLValue visitNullExpression(TLParser.NullExpressionContext ctx) {
        return TLValue.NULL;
    }

    private TLValue resolveIndexes(TLValue val, List<TLParser.ExpressionContext> indexes) {
        for (TLParser.ExpressionContext ec : indexes) {
            TLValue idx = this.visit(ec);
            if (!idx.isNumber() || (!val.isList() && !val.isString())) {
                throw new EvalException("Problem resolving indexes on " + val + " at " + idx, ec);
            }
            int i = idx.asDouble().intValue();
            if (val.isString()) {
                val = new TLValue(val.asString().substring(i, i + 1));
            } else {
                val = val.asList().get(i);
            }
        }
        return val;
    }

    private void setAtIndex(ParserRuleContext ctx, List<TLParser.ExpressionContext> indexes, TLValue val, TLValue newVal) {
        if (!val.isList()) {
            throw new EvalException(ctx);
        }
        for (int i = 0; i < indexes.size() - 1; i++) {
            TLValue idx = this.visit(indexes.get(i));
            if (!idx.isNumber()) {
                throw new EvalException(ctx);
            }
            val = val.asList().get(idx.asDouble().intValue());
        }
        TLValue idx = this.visit(indexes.get(indexes.size() - 1));
        if (!idx.isNumber()) {
            throw new EvalException(ctx);
        }
        val.asList().set(idx.asDouble().intValue(), newVal);
    }

    // functionCall indexes?                    #functionCallExpression
    @Override
    public TLValue visitFunctionCallExpression(TLParser.FunctionCallExpressionContext ctx) {


        TLValue val = this.visit(ctx.functionCall());
        if (ctx.indexes() != null) {
            List<TLParser.ExpressionContext> exps = ctx.indexes().expression();
            val = resolveIndexes(val, exps);
        }
        return val;
    }

    // list indexes?                            #listExpression
    @Override
    public TLValue visitListExpression(TLParser.ListExpressionContext ctx) {
        TLValue val = this.visit(ctx.list());
        if (ctx.indexes() != null) {
            List<TLParser.ExpressionContext> exps = ctx.indexes().expression();
            val = resolveIndexes(val, exps);
        }
        return val;
    }

    // Identifier indexes?                      #identifierExpression
    @Override
    public TLValue visitIdentifierExpression(TLParser.IdentifierExpressionContext ctx) {
        String id = ctx.Identifier().getText();
        TLValue val = scope.resolve(id);

        if (ctx.indexes() != null) {
            List<TLParser.ExpressionContext> exps = ctx.indexes().expression();
            val = resolveIndexes(val, exps);
        }
        return val;
    }

    // String indexes?                          #stringExpression
    @Override
    public TLValue visitStringExpression(TLParser.StringExpressionContext ctx) {
        String text = ctx.getText();
        text = text.substring(1, text.length() - 1).replaceAll("\\\\(.)", "$1");
        TLValue val = new TLValue(text);
        if (ctx.indexes() != null) {
            List<TLParser.ExpressionContext> exps = ctx.indexes().expression();
            val = resolveIndexes(val, exps);
        }
        return val;
    }

    // '(' expression ')' indexes?              #expressionExpression
    @Override
    public TLValue visitExpressionExpression(TLParser.ExpressionExpressionContext ctx) {
        TLValue val = this.visit(ctx.expression());
        if (ctx.indexes() != null) {
            List<TLParser.ExpressionContext> exps = ctx.indexes().expression();
            val = resolveIndexes(val, exps);
        }
        return val;
    }

    // Input '(' String? ')'                    #inputExpression
    @Override
    public TLValue visitInputExpression(TLParser.InputExpressionContext ctx) {
        TerminalNode inputString = ctx.String();
        try {
            if (inputString != null) {
                String text = inputString.getText();
                text = text.substring(1, text.length() - 1).replaceAll("\\\\(.)", "$1");
                return new TLValue(new String(Files.readAllBytes(Paths.get(text))));
            } else {
                BufferedReader buffer = new BufferedReader(new InputStreamReader(System.in));
                return new TLValue(buffer.readLine());
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


    // assignment
    // : Identifier indexes? '=' expression
    // ;
    @Override
    public TLValue visitAssignment(TLParser.AssignmentContext ctx) {
        TLValue newVal = this.visit(ctx.expression());
        if (ctx.indexes() != null) {
            TLValue val = scope.resolve(ctx.Identifier().getText());
            List<TLParser.ExpressionContext> exps = ctx.indexes().expression();
            setAtIndex(ctx, exps, val, newVal);
        } else {
            String id = ctx.Identifier().getText();
            scope.assign(id, newVal);
        }
        return TLValue.VOID;
    }

    @Override
    public TLValue visitBuildInIdentifierFunctionCall(TLParser.BuildInIdentifierFunctionCallContext ctx) {
        List<TLParser.ExpressionContext> params = ctx.exprList() != null ? ctx.exprList().expression() : new ArrayList<TLParser.ExpressionContext>();
        String id = ctx.BuildIdentifier().getText();
        BuildInFunction function;
        if ((function = buildFunction.get(id)) != null) {
            List<TLValue> args = new ArrayList<>(params.size());
            for (TLParser.ExpressionContext param : params) {
                args.add(this.visit(param));
            }
            return function.invoke(args);
        }
        throw new EvalException(ctx);
    }

    // Identifier '(' exprList? ')' #identifierFunctionCall
    @Override
    public TLValue visitIdentifierFunctionCall(TLParser.IdentifierFunctionCallContext ctx) {

        List<TLParser.ExpressionContext> params = ctx.exprList() != null ? ctx.exprList().expression() : new ArrayList<TLParser.ExpressionContext>();
        String id = ctx.Identifier().getText() + params.size();
        Function function;

        if ((function = functions.get(id)) != null) {
            List<TLValue> args = new ArrayList<>(params.size());
            for (TLParser.ExpressionContext param : params) {
                args.add(this.visit(param));
            }
            return function.invoke(args, functions, buildFunction);
        } else {
            throw new EvalException(ctx);
        }

    }

    // Println '(' expression? ')'  #printlnFunctionCall
    @Override
    public TLValue visitPrintlnFunctionCall(TLParser.PrintlnFunctionCallContext ctx) {
        if (ctx.expression() != null) {
            System.out.println(this.visit(ctx.expression()));
        } else {
            System.out.println();
        }
        return TLValue.VOID;
    }

    // Print '(' expression ')'     #printFunctionCall
    @Override
    public TLValue visitPrintFunctionCall(TLParser.PrintFunctionCallContext ctx) {
        System.out.print(this.visit(ctx.expression()));
        return TLValue.VOID;
    }

    // Assert '(' expression ')'    #assertFunctionCall
    @Override
    public TLValue visitAssertFunctionCall(TLParser.AssertFunctionCallContext ctx) {
        TLValue value = this.visit(ctx.expression());

        if (!value.isBoolean()) {
            throw new EvalException(ctx);
        }

        if (!value.asBoolean()) {
            File f=new File(ctx.start.getInputStream().getSourceName());
            throw new AssertionError("Assert failed:" + ctx.expression().getText() + " ("+f.getName()+":" + ctx.start.getLine()+")");
        }

        return TLValue.VOID;
    }

    // Size '(' expression ')'      #sizeFunctionCall
    @Override
    public TLValue visitSizeFunctionCall(TLParser.SizeFunctionCallContext ctx) {
        TLValue value = this.visit(ctx.expression());

        if (value.isString()) {
            return new TLValue(value.asString().length());
        }

        if (value.isList()) {
            return new TLValue(value.asList().size());
        }

        throw new EvalException(ctx);
    }

    // ifStatement
    //  : ifStat elseIfStat* elseStat? End
    //  ;
    //
    // ifStat
    //  : If expression Do block
    //  ;
    //
    // elseIfStat
    //  : Else If expression Do block
    //  ;
    //
    // elseStat
    //  : Else Do block
    //  ;
    @Override
    public TLValue visitIfStatement(TLParser.IfStatementContext ctx) {

        // if ...
        if (this.visit(ctx.ifStat().expression()).asBoolean()) {
            return this.visit(ctx.ifStat().block());
        }

        // else if ...
        for (int i = 0; i < ctx.elseIfStat().size(); i++) {
            if (this.visit(ctx.elseIfStat(i).expression()).asBoolean()) {
                return this.visit(ctx.elseIfStat(i).block());
            }
        }

        // else ...
        if (ctx.elseStat() != null) {
            return this.visit(ctx.elseStat().block());
        }

        return TLValue.VOID;
    }

    // block
    // : (statement | functionDecl)* (Return expression)?
    // ;
    @Override
    public TLValue visitBlock(TLParser.BlockContext ctx) {

        scope = new Scope(scope, false); // create new local scope
        for (TLParser.FunctionDeclContext fdx : ctx.functionDecl()) {
            this.visit(fdx);
        }
        for (TLParser.StatementContext sx : ctx.statement()) {
            this.visit(sx);
        }
        TLParser.ExpressionContext ex;
        if ((ex = ctx.expression()) != null) {
            returnValue.value = this.visit(ex);
            scope = scope.parent();
            throw returnValue;
        }
        scope = scope.parent();
        return TLValue.VOID;
    }

    // forStatement
    // : For Identifier '=' expression To expression OBrace block CBrace
    // ;
    @Override
    public TLValue visitForStatement(TLParser.ForStatementContext ctx) {
        int start = this.visit(ctx.expression(0)).asDouble().intValue();
        int stop = this.visit(ctx.expression(1)).asDouble().intValue();
        for (int i = start; i <= stop; i++) {
            scope.assign(ctx.Identifier().getText(), new TLValue(i));
            TLValue returnValue = this.visit(ctx.block());
            if (returnValue != TLValue.VOID) {
                return returnValue;
            }
        }
        return TLValue.VOID;
    }

    // whileStatement
    // : While expression OBrace block CBrace
    // ;
    @Override
    public TLValue visitWhileStatement(TLParser.WhileStatementContext ctx) {
        while (this.visit(ctx.expression()).asBoolean()) {
            TLValue returnValue = this.visit(ctx.block());
            if (returnValue != TLValue.VOID) {
                return returnValue;
            }
        }
        return TLValue.VOID;
    }

}
