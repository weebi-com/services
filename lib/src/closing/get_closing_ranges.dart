import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart' as sembast;
import 'package:services_weebi/src/closing_no_sembast/get_closing_ranges.dart';
import 'package:services_weebi/src/closing_database/db_store_refs.dart';

class GetClosingRangesRpc extends GetClosingRangesAbstractRpc {
  final sembast.Database _database;

  GetClosingRangesRpc(this._database);

  @override
  Future<List<ClosingRange>> request(void _) async {
    final snap = await DbStoresClosings.closingRangesStoreDb.find(_database);
    return snap.map((e) => ClosingRange.fromMap(e.value)).toList();
  }
}
