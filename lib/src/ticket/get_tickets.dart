// Package imports:
import 'package:services_weebi/db_wrappers.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:services_weebi/src/ticket_no_sembast/get_tickets.dart';

class GetAllTicketsRpc extends GetAllTicketsAbstractRpc {
  final DbTickets _db;

  GetAllTicketsRpc(this._db);

  @override
  Future<Set<TicketWeebi>> request(void data) async {
    final dbStore = intMapStoreFactory.store('tickets');
    final recordSnapshot = await dbStore.find(_db.db);
    if (recordSnapshot.isNotEmpty) {
      return recordSnapshot.map((e) => TicketWeebi.fromMap(e.value)).toSet();
    } else {
      return {};
    }
  }
}
