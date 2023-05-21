// Package imports:
import 'package:sembast/sembast.dart' as sembast;

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;
import 'package:services_weebi/db_wrappers.dart';
import 'package:services_weebi/src/article_no_sembast/get_calibres.dart';

class GetArticleCalibersRpc extends GetArticleCalibersAbstractRpc {
  final DbArticles _database;

  const GetArticleCalibersRpc(this._database);

  @override
  Future<List<ArticleCalibre>> request(void data) async {
    final dbStore = sembast.intMapStoreFactory.store('articles');
    final recordSnapshot = await dbStore.find(_database.db);
    final List<ArticleCalibre> lines =
        recordSnapshot.map((e) => ArticleCalibre.fromMap(e.value)).toList();
    return lines;
  }
}
