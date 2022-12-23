// Package imports:
import 'package:models_weebi/db.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show TicketWeebi;
import 'package:models_weebi/base.dart' show EndpointBase;

class GetAllTicketsRpc implements EndpointBase<Set<TicketWeebi>, void> {
  final DbTickets _db;

  GetAllTicketsRpc(this._db);

  @override
  Future<Set<TicketWeebi>> request(void data) async {
    final _dbStore = intMapStoreFactory.store('tickets');
    final recordSnapshot = await _dbStore.find(_db.db) ?? [];
    if (recordSnapshot.isNotEmpty) {
      return recordSnapshot.map((e) => TicketWeebi.fromMap(e.value)).toSet();
    } else {
      return {};
    }
  }
}
