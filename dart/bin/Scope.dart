import 'dart:core';

import 'TLValue.dart';

class Scope {
  Scope parent;

  Map variables = {};

  bool isFunction = false;

  Scope(this.parent, this.isFunction);

  //
  void assignParam(String var1, TLValue value) {
    variables[var1] = value;
  }

  void assign(String var1, TLValue value) {
    if (resolve(var1, !isFunction) != null) {
      reAssign(var1, value);
    } else {
      // A newly declared variable
      variables[var1] = value;
    }
  }

  void reAssign(String identifier, TLValue value) {
    if (variables.containsKey(identifier)) {
      // The variable is declared in this scope
      // print("write current scope "+identifier);
      variables[identifier] = value;
    } else if (parent != null) {
      // print("write parent scope "+identifier);
      // The variable was not declared in this scope, so let
      // the parent scope re-assign it
      parent.reAssign(identifier, value);
    } else {
      print("parent is null!!");
    }
  }

  bool isGlobalScope() {
    return parent == null;
  }

  bool isFunc() {
    return isFunction = true;
  }

  TLValue resolve(String var1, bool checkParent) {
    TLValue value = variables[var1];
    // print(parent);
    // print("${var1} ${checkParent} ${!isGlobalScope()}");
    if (value != null) {
      return value;
    } else if (checkParent && !isGlobalScope()) {
      // Let the parent scope look for the variable
      return parent.resolve(var1, !(parent.isFunction));
    } else {
      print("没有找到");
      return null;
    }
  }
}
