// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class DeleteAllTicketsAbstractRpc
    implements EndpointBase<void, Set<TicketWeebi>> {
  const DeleteAllTicketsAbstractRpc();
  @override
  Future<void> request(Set<TicketWeebi> tickets) async {
    return;
  }
}

class DeleteAllTicketsFakeRpc extends DeleteAllTicketsAbstractRpc {
  const DeleteAllTicketsFakeRpc();
  @override
  Future<void> request(Set<TicketWeebi> tickets) async {
    return;
  }
}
