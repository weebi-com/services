// Package imports:

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class DisableTicketAbstractRpc
    implements EndpointBase<TicketWeebi, TicketWeebi> {
  const DisableTicketAbstractRpc();
  @override
  Future<TicketWeebi> request(TicketWeebi data) async {
    return data.copyWith(
      status: false,
      statusUpdateDate: DateTime.now(),
    );
  }
}

class DisableTicketFakeRpc extends DisableTicketAbstractRpc {
  const DisableTicketFakeRpc();
  @override
  Future<TicketWeebi> request(TicketWeebi data) async {
    return data.copyWith(
      status: false,
      statusUpdateDate: DateTime.now(),
    );
  }
}
