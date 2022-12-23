// Package imports:
import 'package:models_weebi/db.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:models_weebi/base.dart' show EndpointBase;

class AddAllTicketsRpc implements EndpointBase<void, Set<TicketWeebi>> {
  final DbTickets _db;

  AddAllTicketsRpc(this._db);

  @override
  Future<void> request(Set<TicketWeebi> tickets) async {
    final dbStore = intMapStoreFactory.store('tickets');
    List<Map<String, Object?>> ticketsJonsSembastList = [];
    for (final ticket in tickets) {
      ticketsJonsSembastList.add(ticket.toMap());
    }

    await dbStore.addAll(_db.db, ticketsJonsSembastList);
    // final c = await dbStore.count(_database);
  }
}
