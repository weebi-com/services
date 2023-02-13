import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart';
import 'package:services_weebi/src/closing_no_sembast/delete_closing_range.dart';

class DeleteClosingRangeRpc extends DeleteClosingRangeAbstractRpc {
  final Database _database;

  DeleteClosingRangeRpc(this._database);

  @override
  Future<void> request(ClosingRange data) async {
    final string = data.endDate.toIso8601String();
    print('endDate string $string');
    var oldCount = await DbStoresClosings.closingRangesStoreDb.count(_database);

    final key = await DbStoresClosings.closingRangesStoreDb.findKey(
      _database,
      finder: Finder(filter: Filter.equals('endDate', string)),
    );
    if (key == null) {
      throw 'key $key not found';
    }
    // final stuff = // ! do not use this as a counter, trust additional newCount https://github.com/tekartik/sembast.dart/issues/291
    await DbStoresClosings.closingRangesStoreDb.record(key).delete(_database);
    var newCount = await DbStoresClosings.closingRangesStoreDb.count(_database);

    if (oldCount != 0 && newCount >= oldCount) {
      throw 'error closingRange was not deleted from db';
    }
    return;
  }
}
