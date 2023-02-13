import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class AddAllClosingsStockShopsAbstractRpc
    implements EndpointBase<void, List<ClosingStockShop>> {
  const AddAllClosingsStockShopsAbstractRpc();

  @override
  Future<void> request(List<ClosingStockShop> c) async {}
}

class AddAllClosingsStockShopsFakeRpc
    extends AddAllClosingsStockShopsAbstractRpc {
  const AddAllClosingsStockShopsFakeRpc();

  @override
  Future<void> request(List<ClosingStockShop> c) async {}
}
