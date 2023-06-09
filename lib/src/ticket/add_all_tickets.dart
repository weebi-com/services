// Package imports:
import 'package:services_weebi/db_wrappers.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:services_weebi/src/ticket_no_sembast/add_all_tickets.dart';

class AddAllTicketsRpc extends AddAllTicketsAbstractRpc {
  final DbTickets _db;
  const AddAllTicketsRpc(this._db);

  @override
  Future<int> request(Set<TicketWeebi> tickets) async {
    final dbStore = intMapStoreFactory.store('tickets');
    List<Map<String, dynamic>> ticketsJonsSembastList = [];
    for (final ticket in tickets) {
      ticketsJonsSembastList.add(ticket.toMap());
    }
    final generatedKeys = await dbStore.addAll(_db.db, ticketsJonsSembastList);
    return generatedKeys.length;
  }
}
