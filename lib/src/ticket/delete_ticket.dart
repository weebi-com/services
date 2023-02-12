// Package imports:
import 'package:models_weebi/db.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:services_weebi/src/ticket_no_sembast/delete_ticket.dart';

class DeleteTicketRpc extends DeleteTicketAbstractRpc {
  final DbTickets _db;
  const DeleteTicketRpc(this._db);

  @override
  Future<int> request(TicketWeebi data) async {
    final dbStore = intMapStoreFactory.store('tickets');
    final count = await dbStore.count(_db.db);

    await dbStore.delete(_db.db,
        finder: Finder(
            filter: Filter.and([
          Filter.equals('id', data.id),
          Filter.equals('creationDate', data.creationDate.toIso8601String()),
        ])));
    final countFinal = await dbStore.count(_db.db);
    // print('count $count - countFinal $countFinal');
    return count - countFinal;
  }
}
