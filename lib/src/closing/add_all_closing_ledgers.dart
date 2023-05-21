import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart' as sembast;
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_ledgers.dart';
import 'package:services_weebi/src/closing_database/db_store_refs.dart';

class AddAllClosingLedgersRpc extends AddAllClosingLedgersAbstractRpc {
  final sembast.Database _database;

  AddAllClosingLedgersRpc(this._database);

  @override
  Future<void> request(List<ClosingLedger> closings) async {
    await DbStoresClosings.closingLedgersStoreDb
        .addAll(_database, closings.map((closing) => closing.toMap()).toList());
    return;
  }
}
