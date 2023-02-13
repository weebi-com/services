import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart';
import 'package:services_weebi/src/closing_no_sembast/delete_all_closing_objets.dart';

class DeleteAllClosingObjects extends DeleteAllClosingObjectsAbstractRpc {
  final Database _database;

  DeleteAllClosingObjects(this._database);

  @override
  Future<void> request(List emptyList) async {
    await DbStoresClosings.closingRangesStoreDb.delete(_database);
    await DbStoresClosings.closingStockShopsStoreDb.delete(_database);
    await DbStoresClosings.closingStockProductsStoreDb.delete(_database);
    await DbStoresClosings.closingLedgersStoreDb.delete(_database);
    await DbStoresClosings.closingHerdersStoreDb.delete(_database);
    await DbStoresClosings.closingLedgerShopsStoreDb.delete(_database);
    await DbStoresClosings.closingStocksStoreDb.delete(_database);
    await DbStoresClosings.closingStockProductsStoreDb.delete(_database);
    await DbStoresClosings.closingHerderStocksStoreDb.delete(_database);
    return;
  }
}
