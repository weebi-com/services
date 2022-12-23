// Package imports:
import 'package:models_weebi/db.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:models_weebi/base.dart' show EndpointBase;

class DeleteAllTicketsRpc implements EndpointBase<void, Set<TicketWeebi>> {
  final DbTickets _db;

  DeleteAllTicketsRpc(this._db);

  @override
  Future<void> request(Set<TicketWeebi> tickets) async {
    final ticketsDbStore = intMapStoreFactory.store('tickets');
    Future.microtask(() => ticketsDbStore.delete(_db.db));
    return;
  }
}
