// Package imports:
import 'package:models_weebi/db.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class AddTicketAbstractRpc
    implements EndpointBase<TicketWeebi, TicketWeebi> {
  const AddTicketAbstractRpc();
  @override
  Future<TicketWeebi> request(TicketWeebi data) async {
    return data;
  }
}

class AddTicketFakeRpc extends AddTicketAbstractRpc {
  const AddTicketFakeRpc();
  @override
  Future<TicketWeebi> request(TicketWeebi data) async {
    return data;
  }
}
