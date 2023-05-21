// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;

import 'package:services_weebi/db_wrappers.dart';
import 'package:services_weebi/src/article_no_sembast/delete_forever_calibre_and_its_articles.dart';

class DeleteForeverCalibreAndItsArticlesRpc
    extends DeleteForeverLineArticleAbstractRpc {
  final DbArticles _database;

  const DeleteForeverCalibreAndItsArticlesRpc(this._database);

  @override
  Future<void> request(ArticleCalibre data) async {
    final dbStore = intMapStoreFactory.store('articles');
    final recordSnapshot = await dbStore.find(_database.db);
    if (recordSnapshot.isNotEmpty) {
      await dbStore.delete(_database.db,
          finder: Finder(filter: Filter.equals('id', data.id)));
    }

    return;
  }
}
