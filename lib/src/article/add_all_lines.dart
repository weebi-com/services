// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/db.dart';
import 'package:services_weebi/src/article_no_sembast/add_all_lines.dart';

// this adds all but does not erase anything when importing
class AddAllLineArticlesRpc extends AddAllArticlesLineAbstract {
  final DbArticles _database;

  const AddAllLineArticlesRpc(this._database);

  @override
  Future<void> request(List<LineOfArticles> lines) async {
    final dbStore = intMapStoreFactory.store('articles');
    dbStore.addAll(_database.db, lines.map((e) => e.toMap()).toList());
  }
}
