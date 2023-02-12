// Package imports:
import 'package:sembast/sembast.dart' as sembast;

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/db.dart';
import 'package:services_weebi/src/article_no_sembast/get_lines.dart';

class GetLinesRpc extends GetArticlesLinesAbstractRpc {
  final DbArticles _database;

  const GetLinesRpc(this._database);

  @override
  Future<List<LineOfArticles>> request(void data) async {
    final dbStore = sembast.intMapStoreFactory.store('articles');
    final recordSnapshot = await dbStore.find(_database.db);
    final List<LineOfArticles> lines =
        recordSnapshot.map((e) => LineOfArticles.fromMap(e.value)).toList();
    return lines;
  }
}
