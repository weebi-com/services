// Package imports:
import 'package:collection/collection.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;
import 'package:models_weebi/base.dart' show ArticleAbstract;
import 'package:services_weebi/db_wrappers.dart';
import 'package:services_weebi/src/article_no_sembast/create_article.dart';

class CreateArticleRpc<A extends ArticleAbstract>
    extends CreateArticleAbstractRpc<A> {
  final DbArticles _database;

  const CreateArticleRpc(this._database);

  @override
  Future<A> request(A data, {bool isTest = false}) async {
    final dbStore = intMapStoreFactory.store('articles');
    final recordSnapshot = await dbStore.find(_database.db);
    if (recordSnapshot.isEmpty) {
      throw 'empty';
    }
    final lineKey = await dbStore.findKey(_database.db,
        finder: Finder(filter: Filter.equals('id', data.calibreId)));
    if (lineKey == null) {
      throw 'lineKey null';
    }
    final lineSnap = await dbStore.record(lineKey).get(_database.db);
    if (lineSnap == null) {
      throw 'lineSnap null';
    }
    final line = ArticleCalibre.fromMap(lineSnap);

    line.articles.add(data);
    final updatedLineMap =
        await dbStore.record(lineKey).update(_database.db, line.toMap());
    if (updatedLineMap == null) {
      throw 'updatedLineMap null';
    }
    if (isTest) {
      final d = ArticleCalibre.fromMap(updatedLineMap)
          .articles
          .firstWhereOrNull((element) =>
              element.calibreId == data.calibreId && element.id == data.id);
      // final dd = d is Article ? d : d as ArticleBasket;
      return d as A;
    } else {
      return data;
    }
  }
}
