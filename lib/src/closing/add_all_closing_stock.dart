import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart' as sembast;
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_stock.dart';

class AddAllClosingsStocksFullRpc extends AddAllClosingsStocksFullAbstractRpc {
  final sembast.Database _database;

  AddAllClosingsStocksFullRpc(this._database);

  @override
  Future<void> request(List<ClosingStock> c) async {
    await DbStoresClosings.closingStocksStoreDb
        .addAll(_database, c.map((c) => c.toMap()).toList());
    return;
  }
}
