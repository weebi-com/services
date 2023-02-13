import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class AddAllClosingLedgersAbstractRpc
    implements EndpointBase<void, List<ClosingLedger>> {
  const AddAllClosingLedgersAbstractRpc();

  @override
  Future<void> request(List<ClosingLedger> closings) async {}
}

class AddAllClosingLedgersFakeRpc extends AddAllClosingLedgersAbstractRpc {
  const AddAllClosingLedgersFakeRpc();

  @override
  Future<void> request(List<ClosingLedger> closings) async {}
}
