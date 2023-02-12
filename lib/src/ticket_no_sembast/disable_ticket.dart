// Package imports:
import 'package:sembast/sembast.dart';
import 'package:models_weebi/db.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class DisableTicketAbstractRpc
    implements EndpointBase<TicketWeebi, TicketWeebi> {
  const DisableTicketAbstractRpc();
  @override
  Future<TicketWeebi> request(TicketWeebi data) async {
    return data;
  }
}

class DisableTicketFakeRpc extends DisableTicketAbstractRpc {
  const DisableTicketFakeRpc();
  @override
  Future<TicketWeebi> request(TicketWeebi data) async {
    return data;
  }
}
