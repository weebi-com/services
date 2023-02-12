// Package imports:
import 'package:models_weebi/db.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class GetAllTicketsAbstractRpc
    implements EndpointBase<Set<TicketWeebi>, void> {
  const GetAllTicketsAbstractRpc();

  @override
  Future<Set<TicketWeebi>> request(void data) async {
    return {};
  }
}

class GetAllTicketsFakeRpc extends GetAllTicketsAbstractRpc {
  const GetAllTicketsFakeRpc();
  @override
  Future<Set<TicketWeebi>> request(void data) async {
    return {};
  }
}
