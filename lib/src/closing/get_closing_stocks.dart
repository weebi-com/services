import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_stocks.dart';
import 'package:services_weebi/src/closing_database/db_store_refs.dart';

class GetClosingsStocksRpc extends GetClosingsStocksAbstractRpc {
  final Database _database;

  GetClosingsStocksRpc(this._database);

  @override
  Future<List<ClosingStock>> request(void _) async {
    final snap = await DbStoresClosings.closingStocksStoreDb.find(_database);
    return snap.map((e) => ClosingStock.fromMap(e.value)).toList();
  }
}
