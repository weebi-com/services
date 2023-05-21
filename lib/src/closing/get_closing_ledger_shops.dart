import 'package:sembast/sembast.dart';
import 'package:models_weebi/closings.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_ledger_shops.dart';
import 'package:services_weebi/src/closing_database/db_store_refs.dart';

class GetClosingLedgerShopsRpc extends GetClosingLedgerShopsAbstractRpc {
  final Database _database;

  GetClosingLedgerShopsRpc(this._database);

  @override
  Future<List<ClosingLedgerShop>> request(void _) async {
    final snap =
        await DbStoresClosings.closingLedgerShopsStoreDb.find(_database);
    return snap.map((e) => ClosingLedgerShop.fromJson(e.value)).toList();
  }
}
