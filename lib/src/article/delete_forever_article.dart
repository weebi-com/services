// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;

import 'package:models_weebi/base.dart' show ArticleAbstract, EndpointBase;
import 'package:models_weebi/db.dart';
import 'package:sembast/sembast.dart';

class DeleteForeverArticleRpc<A extends ArticleAbstract>
    implements EndpointBase<void, A> {
  final DbArticles _database;

  const DeleteForeverArticleRpc(this._database);

  @override
  Future<void> request(A data) async {
    final dbStore = intMapStoreFactory.store('articles');
    final recordSnapshot = await dbStore.find(_database.db);
    if (recordSnapshot.isEmpty) {
      throw 'no articles';
    }

    final key = await dbStore.findKey(_database.db,
        finder: Finder(filter: Filter.equals('id', data.lineId)));
    if (key == null) {
      throw 'error key is null in deleteforeverArticle';
    }
    final lineSnap = await dbStore.record(key).get(_database.db);
    if (lineSnap == null) {
      throw 'error lineSnap is null in deleteforeverArticle';
    }
    final _line = LineOfArticles.fromMap(lineSnap);

    final _articleIndex = _line.articles.indexWhere((p) => p.id == data.id);
    _line.articles.removeAt(_articleIndex);
    // final lineSnapUpdated =
    //     await dbStore.record(key).update(_database.db, _line?.toMap());
    // final LineOfArticles line =
    //     LineOfArticles.fromMap(lineSnapUpdated);
    return;
  }
}
