import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart' as sembast;
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_ranges.dart';

class AddAllClosingRangesRpc extends AddAllClosingRangesAbstractRpc {
  final sembast.Database _database;

  AddAllClosingRangesRpc(this._database);

  @override
  Future<void> request(List<ClosingRange> closings) async {
    await DbStoresClosings.closingRangesStoreDb.addAll(
        _database,
        closings
            .map(
              (closing) => closing.toMap(),
            )
            .toList());
    return;
  }
}
