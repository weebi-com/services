// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart'
    show Article, ArticleBasket, LineOfArticles;
import 'package:models_weebi/base.dart' show ArticleAbstract, EndpointBase;
import 'package:models_weebi/db.dart';
import 'package:services_weebi/src/db_store_refs.dart';

class UpdateArticleRpc<A extends ArticleAbstract>
    implements EndpointBase<A, A> {
  final DbArticles _database;

  const UpdateArticleRpc(this._database);

  @override
  Future<A> request(A data) async {
    final _dbStore = DbStoresWeebi().articles;
    final recordSnapshot = await _dbStore.find(_database.db) ?? [];
    if (recordSnapshot.isEmpty) {
      throw 'no articles';
    }
    final key = await _dbStore.findKey(_database.db,
        finder: Finder(filter: Filter.equals('id', data.lineId)));
    if (key == null) {
      throw 'error key is null in updateArticle';
    }
    final lineSnap = await _dbStore.record(key).get(_database.db);
    if (lineSnap == null) {
      throw 'error lineSnap is null in updateArticle';
    }
    final _line = LineOfArticles.fromMap(lineSnap);
    final _articleIndex = _line.articles.indexWhere((p) => p.id == data.id);
    _line.articles[_articleIndex] = data;

    final lineSnapUpdated =
        await _dbStore.record(key).update(_database.db, _line.toMap());

    if (lineSnapUpdated == null) {
      throw 'error lineSnapUpdated is null in updateArticle';
    }
    final LineOfArticles line = LineOfArticles.fromMap(lineSnapUpdated);
    final article = line.articles.firstWhere(
        (element) => element.lineId == data.lineId && element.id == data.id);
    //return data is Article ? article : article as ArticleBasket;
    return data as A;
  }
}
