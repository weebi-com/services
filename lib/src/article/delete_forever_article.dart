// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;

import 'package:models_weebi/base.dart' show ArticleAbstract;
import 'package:services_weebi/db_wrappers.dart';
import 'package:sembast/sembast.dart';
import 'package:services_weebi/src/article_no_sembast/delete_forever_article.dart';

class DeleteForeverArticleRpc<A extends ArticleAbstract>
    extends DeleteForeverArticleAbstractRpc<A> {
  final DbArticles _database;

  DeleteForeverArticleRpc(this._database);

  @override
  Future<void> request(A data) async {
    final dbStore = intMapStoreFactory.store('articles');
    final recordSnapshot = await dbStore.find(_database.db);
    if (recordSnapshot.isEmpty) {
      throw 'no articles';
    }

    final key = await dbStore.findKey(_database.db,
        finder: Finder(filter: Filter.equals('id', data.calibreId)));
    if (key == null) {
      throw 'error no match for calibreId ${data.calibreId} in deleteforeverArticle';
    }
    final lineSnap = await dbStore.record(key).get(_database.db);
    if (lineSnap == null) {
      throw 'error lineSnap is null in deleteforeverArticle';
    }
    final _line = ArticleCalibre.fromMap(lineSnap);

    final _articleIndex = _line.articles.indexWhere((p) => p.id == data.id);
    _line.articles.removeAt(_articleIndex);

    return;
  }
}
