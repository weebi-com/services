// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/base.dart' show EndpointBase;
import 'package:models_weebi/db.dart';

class DeleteAllArticleLinesRpc
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
