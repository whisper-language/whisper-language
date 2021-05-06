import 'dart:core';

import 'TLValue.dart';

class Scope {
  Scope parent;
  Map variables = new Map();
  bool isFunction = false;

  Scope(this.parent, this.isFunction);

  //
  void assignParam(String var1, TLValue value) {
    variables[var1] = value;
  }

  bool isGlobalScope() {
    return parent == null;
  }

  TLValue resolve(String var1, bool checkParent) {
    TLValue value = variables[var1];
    if (value != null) {
      return value;
    } else if (!checkParent && !isGlobalScope()) {
      // Let the parent scope look for the variable
      return parent.resolve(var1, !(parent.isFunction));
    } else {
      // Unknown variable
      return null;
    }
  }
}
