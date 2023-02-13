import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class GetClosingLedgersAbstractRpc
    implements EndpointBase<List<ClosingLedger>, void> {
  const GetClosingLedgersAbstractRpc();
  @override
  Future<List<ClosingLedger>> request(void _) async {
    return [];
  }
}

class GetClosingLedgersFakeRpc extends GetClosingLedgersAbstractRpc {
  const GetClosingLedgersFakeRpc();
  @override
  Future<List<ClosingLedger>> request(void _) async {
    return [];
  }
}
