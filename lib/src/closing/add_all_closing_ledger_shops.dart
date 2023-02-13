import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart' as sembast;
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_ledger_shops.dart';

class AddAllClosingLedgerShopsRpc extends AddAllClosingLedgerShopsAbstractRpc {
  final sembast.Database _database;

  AddAllClosingLedgerShopsRpc(this._database);

  @override
  Future<void> request(List<ClosingLedgerShop> closings) async {
    await DbStoresClosings.closingLedgerShopsStoreDb
        .addAll(_database, closings.map((c) => c.toMap()).toList());
    return;
  }
}
