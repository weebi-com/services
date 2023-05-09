// Package imports:
import 'package:sembast/sembast.dart' as sembast;

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLine;
import 'package:models_weebi/db.dart';
import 'package:services_weebi/src/article_no_sembast/get_lines.dart';

class GetLinesRpc extends GetArticlesLinesAbstractRpc {
  final DbArticles _database;

  const GetLinesRpc(this._database);

  @override
  Future<List<ArticleLine>> request(void data) async {
    final dbStore = sembast.intMapStoreFactory.store('articles');
    final recordSnapshot = await dbStore.find(_database.db);
    final List<ArticleLine> lines =
        recordSnapshot.map((e) => ArticleLine.fromMap(e.value)).toList();
    return lines;
  }
}
