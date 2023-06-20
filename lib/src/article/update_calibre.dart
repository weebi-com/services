// Package imports:
import 'package:models_weebi/base.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;
import 'package:services_weebi/db_wrappers.dart';
import 'package:services_weebi/src/article_no_sembast/update_calibre.dart';
import 'package:services_weebi/src/db_store_refs.dart';

class UpdateCalibreArticleRpc<A extends ArticleAbstract>
    extends UpdateArticleCalibreAbstractRpc<A>
    implements EndpointBase<ArticleCalibre<A>, ArticleCalibre<A>> {
  final DbArticles _database;

  const UpdateCalibreArticleRpc(this._database);

  @override
  Future<ArticleCalibre<A>> request(ArticleCalibre<A> data) async {
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

    final ArticleCalibre<A> temp = ArticleCalibre.fromMap(lineSnap);
    // final ArticleCalibre<A> temp = (data.isBasket ?? false)
    //     ? ArticleCalibre.fromMapArticleBasket(lineSnap)
    //     : ArticleCalibre.fromMapArticleRetail(lineSnap);
    return temp;
  }
}
