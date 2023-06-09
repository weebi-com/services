// Package imports:
import 'package:services_weebi/db_wrappers.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:services_weebi/src/ticket_no_sembast/add_ticket.dart';

class AddTicketRpc extends AddTicketAbstractRpc {
  final DbTickets _db;

  const AddTicketRpc(this._db);

  @override
  Future<TicketWeebi> request(TicketWeebi data) async {
    final dbStore = intMapStoreFactory.store('tickets');
    final int key = await dbStore.add(_db.db, data.toMap());
    final ticketDb = await dbStore.record(key).get(_db.db);
    if (ticketDb == null) {
      throw 'error';
    }
    return TicketWeebi.fromMap(ticketDb);
  }
}
