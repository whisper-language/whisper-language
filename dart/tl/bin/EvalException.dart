import 'package:antlr4/antlr4.dart';

class EvalException implements Exception {
  String msg;
  ParserRuleContext ctx;
  EvalException({this.msg,this.ctx});
}
