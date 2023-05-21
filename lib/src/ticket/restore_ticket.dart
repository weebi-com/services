// Package imports:
import 'package:sembast/sembast.dart';
import 'package:services_weebi/db_wrappers.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:services_weebi/src/ticket_no_sembast/restore_ticket.dart';

class RestoreTicketRpc extends RestoreTicketAbstractRpc {
  final DbTickets _db;
  RestoreTicketRpc(this._db);

  @override
  Future<TicketWeebi> request(TicketWeebi data) async {
    final dbStore = intMapStoreFactory.store('tickets');

    final restoredTicket = data.copyWith(
      status: true,
      statusUpdateDate: DateTime.now(),
    );

    // no need to use creationDate as filter, tickets made 1 after the other
    // which is good since sembast requires TimeStamp and not dates
    // only risk of id confusion regarding stock tickets
    // so adding ticketType as a filter criteria
    await dbStore.update(_db.db, restoredTicket.toMap(),
        finder: Finder(
            filter: Filter.and([
          Filter.equals('id', restoredTicket.id),
          Filter.equals(
              'creationDate', restoredTicket.creationDate.toIso8601String())
        ])));
    //print('count $count');
    final snap = await dbStore.findFirst(_db.db,
        finder: Finder(
            filter: Filter.and([
          Filter.equals('id', restoredTicket.id),
          Filter.equals(
              'creationDate', restoredTicket.creationDate.toIso8601String())
        ])));
    if (snap == null) {
      throw 'erreur lors de la réactivation du ticket';
    } else {
      return TicketWeebi.fromMap(snap.value);
    }
  }
}
