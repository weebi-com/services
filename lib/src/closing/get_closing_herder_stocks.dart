import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_herder_stocks.dart';
import 'package:services_weebi/src/closing_database/db_store_refs.dart';

class GetClosingsHerderStocksRpc extends GetClosingsHerderStocksAbstractRpc {
  final Database _database;

  GetClosingsHerderStocksRpc(this._database);

  @override
  Future<List<ClosingStockHerder>> request(void _) async {
    final snap =
        await DbStoresClosings.closingHerderStocksStoreDb.find(_database);
    return snap.map((e) => ClosingStockHerder.fromMap(e.value)).toList();
  }
}
