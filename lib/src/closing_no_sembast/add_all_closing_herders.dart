import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class AddAllClosingsHerdersAbstractRpc
    implements EndpointBase<void, List<ClosingLedgerHerder>> {
  const AddAllClosingsHerdersAbstractRpc();
  @override
  Future<void> request(List<ClosingLedgerHerder> closingsHerders) async {}
}

class AddAllClosingsHerdersFakeRpc extends AddAllClosingsHerdersAbstractRpc {
  AddAllClosingsHerdersFakeRpc();

  @override
  Future<void> request(List<ClosingLedgerHerder> closingsHerders) async {}
}
