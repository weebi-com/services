import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class GetClosingsStockProductsAbstractRpc
    implements EndpointBase<List<ClosingStockProduct>, void> {
  const GetClosingsStockProductsAbstractRpc();
  @override
  Future<List<ClosingStockProduct>> request(void _) async {
    return [];
  }
}

class GetClosingsStockProductsFakeRpc
    extends GetClosingsStockProductsAbstractRpc {
  const GetClosingsStockProductsFakeRpc();
  @override
  Future<List<ClosingStockProduct>> request(void _) async {
    return [];
  }
}
