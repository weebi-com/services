// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;
import 'package:services_weebi/db_wrappers.dart';
import 'package:services_weebi/src/article_no_sembast/add_all_calibres.dart';

// this adds all but does not erase anything when importing
class AddAllArticleCalibresRpc extends AddAllArticleCalibresAbstract {
  final DbArticles _database;

  const AddAllArticleCalibresRpc(this._database);

  @override
  Future<int> request(List<ArticleCalibre> calibres) async {
    final dbStore = intMapStoreFactory.store('articles');
    final generatedKeys = await dbStore.addAll(
        _database.db, calibres.map((e) => e.toMap()).toList());
    return generatedKeys.length;
  }
}
