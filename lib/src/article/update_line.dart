// Package imports:
import 'package:models_weebi/base.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart'
    show ArticleBasket, ArticleLine, ArticleRetail;
import 'package:models_weebi/db.dart';
import 'package:services_weebi/src/article_no_sembast/update_line.dart';
import 'package:services_weebi/src/db_store_refs.dart';

class UpdateLineArticleRpc<A extends ArticleAbstract>
    extends UpdateArticleLineAbstractRpc<A> {
  final DbArticles _database;

  const UpdateLineArticleRpc(this._database);

  @override
  Future<ArticleLine<A>> request(ArticleLine<A> data) async {
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
    // final _line = ArticleLine.fromMap(lineSnap); // do not use this since we need to know the exact type
    final temp = data.isBasket
        ? ArticleLine.fromMapArticleBasket(lineSnap)
        : ArticleLine.fromMapArticleRetail(lineSnap);
    return temp;
  }
}
