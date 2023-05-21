import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_herders.dart';
import 'package:services_weebi/src/closing_database/db_store_refs.dart';

class GetClosingsHerdersRpc extends GetClosingsHerdersAbstractRpc {
  final Database _database;

  GetClosingsHerdersRpc(this._database);

  @override
  Future<List<ClosingLedgerHerder>> request(void _) async {
    final snap = await DbStoresClosings.closingHerdersStoreDb.find(_database);
    return snap.map((e) => ClosingLedgerHerder.fromMap(e.value)).toList();
  }
}
