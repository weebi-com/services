import 'package:sembast/sembast.dart' as sembast;
import 'package:models_weebi/closings.dart';
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_stock_shops.dart';

class AddAllClosingsStockShopsRpc extends AddAllClosingsStockShopsAbstractRpc {
  final sembast.Database _database;

  AddAllClosingsStockShopsRpc(this._database);

  @override
  Future<void> request(List<ClosingStockShop> c) async {
    await DbStoresClosings.closingStockShopsStoreDb
        .addAll(_database, c.map((c) => c.toMap()).toList());
    return;
  }
}
