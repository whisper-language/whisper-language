class TLValue implements Comparable<TLValue> {
  static final TLValue NULL = new TLValue();

  static final TLValue VOID = new TLValue();

  dynamic value;

  TLValue({dynamic v}) {
    if (v == null) {
      value = v;
    }
    value = v;
    // only accept boolean, list, number or string types
    if (!(isBoolean() || isList() || isNumber() || isString())) {
      throw new Exception("error type");
    }
  }

  bool asBoolean() {
    return value as bool;
  }

  double asDouble() {
    return value as double;
  }

  int asInt() {
    return (value as num) as int;
  }

  List<TLValue> asList() {
    return value as List<TLValue>;
  }

  String asString() {
    return value;
  }

  bool equals(Object o) {
    if (this == VOID || o == VOID) {
      throw new Exception("can't use VOID: ");
    }
    if (this == o) {
      return true;
    }
    if (o == null) {
      return false;
    }
    TLValue that = o as TLValue;
    if (this.isNumber() && that.isNumber()) {
      double diff = (this.asDouble() - that.asDouble()).abs();
      return diff < 0.00000000001;
    } else {
      return this.value.equals(that.value);
    }
  }

  bool isBoolean() {
    return value is bool;
  }

  bool isNumber() {
    return value is num;
  }

  bool isList() {
    return value is List<dynamic>;
  }

  bool isNull() {
    return this == NULL;
  }

  bool isVoid() {
    return this == VOID;
  }

  bool isString() {
    return value is String;
  }

  @override
  int compareTo(TLValue other) {
    if (this.isNumber() && other.isNumber()) {
      if (this.equals(other)) {
        return 0;
      } else {
        return this.asDouble().compareTo(other.asDouble());
      }
    } else if (this.isString() && other.isString()) {
      return this.asString().compareTo(other.asString());
    } else {
      throw new Exception("illegal expression: can't compare `" +
          this.toString() +
          "` to `" +
          other.toString() +
          "`");
    }
  }

  @override
  String toString() {
    return isNull()
        ? "NULL"
        : isVoid()
            ? "VOID"
            : value as String;
  }
}
