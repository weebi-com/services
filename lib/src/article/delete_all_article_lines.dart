// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLine;
import 'package:models_weebi/db.dart';
import 'package:services_weebi/src/article_no_sembast/delete_all_article_lines.dart';

class DeleteAllArticleLineRpc extends DeleteAllArticleLineAbstractRpc {
  final DbArticles _database;

  DeleteAllArticleLineRpc(this._database);

  @override
  Future<void> request(List<ArticleLine> products) async {
    final dbStore = intMapStoreFactory.store('articles');
    await dbStore.delete(_database.db);
    return;
  }
}
