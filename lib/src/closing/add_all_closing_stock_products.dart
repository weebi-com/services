import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart' as sembast;
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_stock_products.dart';

class AddAllClosingsStockProductsRpc
    extends AddAllClosingsStockProductsAbstractRpc {
  final sembast.Database _database;

  AddAllClosingsStockProductsRpc(this._database);

  @override
  Future<void> request(List<ClosingStockProduct> c) async {
    await DbStoresClosings.closingStockProductsStoreDb
        .addAll(_database, c.map((c) => c.toMap()).toList());
    return;
  }
}
