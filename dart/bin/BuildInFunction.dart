import 'TLValue.dart';

abstract class BuildInFunction {
  TLValue invoke(List<TLValue> argv);
}
