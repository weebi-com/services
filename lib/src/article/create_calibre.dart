// Package imports:
import 'package:models_weebi/base.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;
import 'package:services_weebi/db_wrappers.dart';
import 'package:services_weebi/src/article_no_sembast/create_calibre.dart';

class CreateArticleCalibreRpc<A extends ArticleAbstract>
    extends CreateArticleCalibreAbstractRpc<A> {
  final DbArticles _database;

  CreateArticleCalibreRpc(this._database);

  @override
  Future<ArticleCalibre<A>> request(ArticleCalibre<A> data) async {
    final dbStore = intMapStoreFactory.store('articles');
    final int key = await dbStore.add(_database.db, data.toMap());
    final raw = await dbStore.record(key).get(_database.db);
    if (raw == null) {
      throw 'error CreateArticleCalibreRpc null';
    }
    final temp = (data.isBasket)
        ? ArticleCalibre.fromMapArticleBasket(raw)
        : ArticleCalibre.fromMapArticleRetail(raw);
    return temp as ArticleCalibre<A>;
  }
}
