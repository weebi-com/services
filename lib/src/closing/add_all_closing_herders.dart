import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart' as sembast;
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_herders.dart';

class AddAllClosingsHerdersRpc extends AddAllClosingsHerdersAbstractRpc {
  final sembast.Database _database;

  AddAllClosingsHerdersRpc(this._database);

  @override
  Future<void> request(List<ClosingLedgerHerder> closingsHerders) async {
    await DbStoresClosings.closingHerdersStoreDb
        .addAll(_database, closingsHerders.map((c) => c.toMap()).toList());
    return;
  }
}
