import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_ledgers.dart';
import 'package:services_weebi/src/closing_database/db_store_refs.dart';

class GetClosingLedgersRpc extends GetClosingLedgersAbstractRpc {
  final Database _database;

  GetClosingLedgersRpc(this._database);

  @override
  Future<List<ClosingLedger>> request(void _) async {
    final snap = await DbStoresClosings.closingLedgersStoreDb.find(_database);
    return snap.map((e) => ClosingLedger.fromMap(e.value)).toList();
  }
}
