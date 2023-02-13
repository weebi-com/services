import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class AddAllClosingLedgerShopsAbstractRpc
    implements EndpointBase<void, List<ClosingLedgerShop>> {
  const AddAllClosingLedgerShopsAbstractRpc();
  @override
  Future<void> request(List<ClosingLedgerShop> closings) async {}
}

class AddAllClosingLedgerShopsFakeRpc
    extends AddAllClosingLedgerShopsAbstractRpc {
  const AddAllClosingLedgerShopsFakeRpc();

  @override
  Future<void> request(List<ClosingLedgerShop> closings) async {}
}
