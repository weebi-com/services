import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class GetClosingsStockShopsAbstractRpc
    implements EndpointBase<List<ClosingStockShop>, void> {
  const GetClosingsStockShopsAbstractRpc();
  @override
  Future<List<ClosingStockShop>> request(void _) async {
    return [];
  }
}

class GetClosingsStockShopsFakeRpc extends GetClosingsStockShopsAbstractRpc {
  const GetClosingsStockShopsFakeRpc();
  @override
  Future<List<ClosingStockShop>> request(void _) async {
    return [];
  }
}
