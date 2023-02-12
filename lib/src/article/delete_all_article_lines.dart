// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/base.dart' show EndpointBase;
import 'package:models_weebi/db.dart';
import 'package:services_weebi/src/article_no_sembast/delete_all_article_lines.dart';

class DeleteAllArticleLinesRpc extends DeleteAllArticleLinesAbstractRpc
    implements EndpointBase<void, List<LineOfArticles>> {
  final DbArticles _database;

  DeleteAllArticleLinesRpc(this._database);

  @override
  Future<void> request(List<LineOfArticles> products) async {
    final dbStore = intMapStoreFactory.store('articles');
    await dbStore.delete(_database.db);
    return;
  }
}
