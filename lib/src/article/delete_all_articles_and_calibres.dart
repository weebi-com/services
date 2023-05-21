// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;
import 'package:services_weebi/db_wrappers.dart';
import 'package:services_weebi/src/article_no_sembast/delete_all_articles_and_calibres.dart';

class DeleteAllArticleCalibreRpc extends DeleteAllArticleCalibreAbstractRpc {
  final DbArticles _database;

  DeleteAllArticleCalibreRpc(this._database);

  @override
  Future<void> request(List<ArticleCalibre> products) async {
    final dbStore = intMapStoreFactory.store('articles');
    await dbStore.delete(_database.db);
    return;
  }
}
