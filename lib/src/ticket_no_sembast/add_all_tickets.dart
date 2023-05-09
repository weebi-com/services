// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class AddAllTicketsAbstractRpc
    implements EndpointBase<void, Set<TicketWeebi>> {
  const AddAllTicketsAbstractRpc();
  @override
  Future<void> request(Set<TicketWeebi> tickets) async {}
}

class AddAllTicketsFakeRpc extends AddAllTicketsAbstractRpc {
  const AddAllTicketsFakeRpc();
  @override
  Future<void> request(Set<TicketWeebi> tickets) async {}
}
