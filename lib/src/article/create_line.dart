// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_base/base.dart' show EndpointBase;
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/db.dart';
import 'package:models_weebi/base.dart' show EndpointBase;
import 'package:services_weebi/src/article_no_sembast/create_line.dart';

// import 'package:models_weebi/weebi_models.dart' show ArticleWeebi;
// import 'package:models_weebi/weebi_models.dart' show LotWeebi;

class CreateArticleLineRpc extends CreateArticleLineAbstractRpc
    implements EndpointBase<LineOfArticles, LineOfArticles> {
  final DbArticles _database;

  CreateArticleLineRpc(this._database);

  @override
  Future<LineOfArticles> request(LineOfArticles data) async {
    final dbStore = intMapStoreFactory.store('articles');
    final int key = await dbStore.add(_database.db, data.toMap());
    final raw = await dbStore.record(key).get(_database.db);
    if (raw != null) {
      final p = LineOfArticles.fromMap(raw);
      return p;
    } else {
      throw 'error CreateArticleLineRpc null';
    }
  }
}
