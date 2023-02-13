import 'package:models_weebi/base.dart';
import 'package:models_weebi/closings.dart';

abstract class GetClosingsHerdersAbstractRpc
    implements EndpointBase<List<ClosingLedgerHerder>, void> {
  const GetClosingsHerdersAbstractRpc();
  @override
  Future<List<ClosingLedgerHerder>> request(void _) async {
    return [];
  }
}

class GetClosingsHerdersFakeRpc extends GetClosingsHerdersAbstractRpc {
  const GetClosingsHerdersFakeRpc();
  @override
  Future<List<ClosingLedgerHerder>> request(void _) async {
    return [];
  }
}
