import 'package:models_weebi/closings.dart';
import 'package:sembast/sembast.dart';
import 'package:services_weebi/src/closing_no_sembast/create_closing_range.dart';

class CreateClosingRangeRpc extends CreateClosingRangeAbstractRpc {
  final Database _database;

  CreateClosingRangeRpc(this._database);

  @override
  Future<ClosingRange> request(ClosingRange data) async {
    final key = await DbStoresClosings.closingRangesStoreDb
        .add(_database, data.toMap());
    final stuff =
        await DbStoresClosings.closingRangesStoreDb.record(key).get(_database);
    if (stuff == null) {
      throw '${data.toMap()} not found';
    }
    return ClosingRange.fromMap(stuff);
  }
}
