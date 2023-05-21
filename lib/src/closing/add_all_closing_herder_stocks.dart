import 'dart:core';
import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart' as sembast;
import 'package:services_weebi/src/closing_database/db_store_refs.dart';
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_herder_stocks.dart';

class AddAllClosingsHerderStocksRpc
    extends AddAllClosingsHerderStocksAbstractRpc {
  final sembast.Database _database;

  AddAllClosingsHerderStocksRpc(this._database);

  @override
  Future<void> request(List<ClosingStockHerder> c) async {
    await DbStoresClosings.closingHerderStocksStoreDb
        .addAll(_database, c.map((c) => c.toMap()).toList());
    return;
  }
}
