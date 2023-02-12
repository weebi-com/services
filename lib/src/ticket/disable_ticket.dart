// Package imports:
import 'package:sembast/sembast.dart';
import 'package:models_weebi/db.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:models_weebi/base.dart' show EndpointBase;
import 'package:services_weebi/src/ticket_no_sembast/disable_ticket.dart';

class DisableTicketRpc extends DisableTicketAbstractRpc {
  final DbTickets _db;

  DisableTicketRpc(this._db);

  @override
  Future<TicketWeebi> request(TicketWeebi data) async {
    //TODO make this a simple update
    final _dbStore = intMapStoreFactory.store('tickets');
    // print('entering the disable rpc');
    final disabledTicket = data.copyWith(
      status: false,
      statusUpdateDate: DateTime.now(),
    );

    // no need to use creationDate as filter, tickets made 1 after the other
    // only risk of id confusion regarding potentially downloaded stock tickets
    // so adding ticketType as a filter criteria

    // print('about to update rpc');
    //final count =
    await _dbStore.update(_db.db, disabledTicket.toMap(),
        finder: Finder(
            filter: Filter.and([
          Filter.equals('id', disabledTicket.id) &
              Filter.equals(
                'creationDate',
                disabledTicket.creationDate.toIso8601String(),
              )
        ])));
    // print('updated count $count');
    // print('updated');
    final snap = await _dbStore.findFirst(_db.db,
        finder: Finder(
            filter: Filter.and([
          Filter.equals('id', disabledTicket.id) &
              Filter.equals(
                  'creationDate', disabledTicket.creationDate.toIso8601String())
        ])));
    if (snap == null) {
      throw 'erreur lors de la désactivation du ticket';
    } else {
      return TicketWeebi.fromMap(snap.value);
    }
  }
}
