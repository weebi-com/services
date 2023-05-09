// Package imports:
import 'package:models_weebi/base.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLine;
import 'package:models_weebi/db.dart';
import 'package:services_weebi/src/article_no_sembast/create_line.dart';

class CreateArticleLineRpc<A extends ArticleAbstract>
    extends CreateArticleLineAbstractRpc<A> {
  final DbArticles _database;

  CreateArticleLineRpc(this._database);

  @override
  Future<ArticleLine<A>> request(ArticleLine<A> data) async {
    final dbStore = intMapStoreFactory.store('articles');
    final int key = await dbStore.add(_database.db, data.toMap());
    final raw = await dbStore.record(key).get(_database.db);
    if (raw == null) {
      throw 'error CreateArticleLineRpc null';
    }
    final temp = data.isBasket
        ? ArticleLine.fromMapArticleBasket(raw)
        : ArticleLine.fromMapArticleRetail(raw);
    return temp;
  }
}
