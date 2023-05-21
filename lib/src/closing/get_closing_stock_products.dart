import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_stock_products.dart';
import 'package:services_weebi/src/closing_database/db_store_refs.dart';

class GetClosingsStockProductsRpc extends GetClosingsStockProductsAbstractRpc {
  final Database _database;

  GetClosingsStockProductsRpc(this._database);

  @override
  Future<List<ClosingStockProduct>> request(void _) async {
    final snap =
        await DbStoresClosings.closingStockProductsStoreDb.find(_database);
    return snap.map((e) => ClosingStockProduct.fromMap(e.value)).toList();
  }
}
