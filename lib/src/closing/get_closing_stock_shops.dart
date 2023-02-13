import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_stock_shops.dart';

class GetClosingsStockShopsRpc extends GetClosingsStockShopsAbstractRpc {
  final Database _database;

  GetClosingsStockShopsRpc(this._database);

  @override
  Future<List<ClosingStockShop>> request(void _) async {
    final snap =
        await DbStoresClosings.closingStockShopsStoreDb.find(_database);
    return snap.map((e) => ClosingStockShop.fromMap(e.value)).toList();
  }
}
