// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/db.dart';
import 'package:services_weebi/src/article_no_sembast/update_line.dart';
import 'package:services_weebi/src/db_store_refs.dart';

class UpdateLineArticleRpc extends UpdateArticleLineAbstractRpc {
  final DbArticles _database;

  const UpdateLineArticleRpc(this._database);

  @override
  Future<LineOfArticles> request(LineOfArticles data) async {
    final dbStore = DbStoresWeebi().articles;
    final recordSnapshot = await dbStore.find(_database.db);
    if (recordSnapshot.isEmpty) {
      throw 'no articles';
    }
    final key = await dbStore.findKey(_database.db,
        finder: Finder(filter: Filter.equals('id', data.id)));
    if (key == null) {
      throw 'error key is null in updateLine';
    }

    final lineSnap =
        await dbStore.record(key).update(_database.db, data.toMap());
    if (lineSnap == null) {
      throw 'error key is null in updateLine';
    }
    final _line = LineOfArticles.fromMap(lineSnap);
    return _line;
  }
}
