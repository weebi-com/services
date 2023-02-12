// Package imports:
import 'package:models_weebi/db.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:services_weebi/src/ticket_no_sembast/add_all_tickets.dart';

class AddAllTicketsRpc extends AddAllTicketsAbstractRpc {
  final DbTickets _db;
  const AddAllTicketsRpc(this._db);

  @override
  Future<void> request(Set<TicketWeebi> tickets) async {
    final dbStore = intMapStoreFactory.store('tickets');
    List<Map<String, Object?>> ticketsJonsSembastList = [];
    for (final ticket in tickets) {
      ticketsJonsSembastList.add(ticket.toMap());
    }
    await dbStore.addAll(_db.db, ticketsJonsSembastList);
  }
}
