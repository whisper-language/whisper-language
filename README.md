fork from https://github.com/bkiers/tiny-language-antlr4
# 特性
- 增加内建函数支持 更好的 宿主环境和解释环境的交互
- @开头的函数为内建函数
如何定义
```java
public class Main {
    public static void main(String[] args) {
        try {
            TLLexer lexer = new TLLexer(CharStreams.fromFileName("src/main/tl/test.pg"));
            TLParser parser = new TLParser(new CommonTokenStream(lexer));
            parser.setBuildParseTree(true);
            ParseTree tree = parser.parse();
            
            Scope scope = new Scope();
            Map<String, BuildInFunction> functions = new HashMap<>();
            //增加内建函数
            functions.put("@sum", argv -> new TLValue(argv.stream().mapToLong(TLValue::asByte).sum()));

            EvalVisitor visitor = new EvalVisitor(scope, new HashMap<>(),functions);
            visitor.visit(tree);
        } catch (Exception e) {
            if (e.getMessage() != null) {
                System.err.println(e.getMessage());
            } else {
                e.printStackTrace();
            }
        }
    }
}
```


# 在idea中开发

下载 idea 插件 antrl4

![ANTLR config](./image/antlr_config.png)

```
Ctrl_Shift+G
```



# maven 使用
```
<dependency>
  <groupId>net.crtrpt</groupId>
  <artifactId>tiny-language</artifactId>
  <version>${tiny-language-version}</version>
</dependency>
```
## (Un)license

[The Unlicense](http://unlicense.org)

## TODO 
- 生成 jvm bytecode
- swift 支持
