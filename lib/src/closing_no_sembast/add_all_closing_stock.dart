import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class AddAllClosingsStocksFullAbstractRpc
    implements EndpointBase<void, List<ClosingStock>> {
  const AddAllClosingsStocksFullAbstractRpc();

  @override
  Future<void> request(List<ClosingStock> c) async {}
}

class AddAllClosingsStocksFullFakeRpc
    extends AddAllClosingsStocksFullAbstractRpc {
  const AddAllClosingsStocksFullFakeRpc();

  @override
  Future<void> request(List<ClosingStock> c) async {}
}
