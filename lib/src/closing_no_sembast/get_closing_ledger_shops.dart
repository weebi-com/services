import 'package:models_weebi/base.dart';
import 'package:models_weebi/closings.dart';

abstract class GetClosingLedgerShopsAbstractRpc
    implements EndpointBase<List<ClosingLedgerShop>, void> {
  const GetClosingLedgerShopsAbstractRpc();
  @override
  Future<List<ClosingLedgerShop>> request(void _) async {
    return [];
  }
}

class GetClosingLedgerShopsFakeRpc extends GetClosingLedgerShopsAbstractRpc {
  const GetClosingLedgerShopsFakeRpc();
  @override
  Future<List<ClosingLedgerShop>> request(void _) async {
    return [];
  }
}
