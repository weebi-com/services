// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class RestoreTicketAbstractRpc
    implements EndpointBase<TicketWeebi, TicketWeebi> {
  const RestoreTicketAbstractRpc();

  @override
  Future<TicketWeebi> request(TicketWeebi data) async {
    return data;
  }
}

class RestoreTicketFakeRpc extends RestoreTicketAbstractRpc {
  const RestoreTicketFakeRpc();

  @override
  Future<TicketWeebi> request(TicketWeebi data) async {
    return data;
  }
}
