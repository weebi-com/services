import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class AddAllClosingsStockProductsAbstractRpc
    implements EndpointBase<void, List<ClosingStockProduct>> {
  const AddAllClosingsStockProductsAbstractRpc();

  @override
  Future<void> request(List<ClosingStockProduct> c) async {}
}

class AddAllClosingsStockProductsFakeRpc
    extends AddAllClosingsStockProductsAbstractRpc {
  AddAllClosingsStockProductsFakeRpc();

  @override
  Future<void> request(List<ClosingStockProduct> c) async {}
}
