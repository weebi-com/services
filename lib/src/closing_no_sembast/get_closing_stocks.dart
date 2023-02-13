import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class GetClosingsStocksAbstractRpc
    implements EndpointBase<List<ClosingStock>, void> {
  const GetClosingsStocksAbstractRpc();
  @override
  Future<List<ClosingStock>> request(void _) async {
    return [];
  }
}

class GetClosingsStocksFakeRpc extends GetClosingsStocksAbstractRpc {
  const GetClosingsStocksFakeRpc();
  @override
  Future<List<ClosingStock>> request(void _) async {
    return [];
  }
}
