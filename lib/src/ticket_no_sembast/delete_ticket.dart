// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class DeleteTicketAbstractRpc
    implements EndpointBase<void, TicketWeebi> {
  const DeleteTicketAbstractRpc();
  @override
  Future<int> request(TicketWeebi data) async {
    return -1;
  }
}

class DeleteTicketFakeRpc extends DeleteTicketAbstractRpc {
  const DeleteTicketFakeRpc();
  @override
  Future<int> request(TicketWeebi data) async {
    return -1;
  }
}
