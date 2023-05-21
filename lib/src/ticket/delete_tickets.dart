// Package imports:
import 'package:services_weebi/db_wrappers.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:services_weebi/src/ticket_no_sembast/delete_tickets.dart';

class DeleteAllTicketsRpc extends DeleteAllTicketsAbstractRpc {
  final DbTickets _db;
  DeleteAllTicketsRpc(this._db);

  @override
  Future<void> request(Set<TicketWeebi> tickets) async {
    final ticketsDbStore = intMapStoreFactory.store('tickets');
    Future.microtask(() => ticketsDbStore.delete(_db.db));
    return;
  }
}
