// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;

import 'package:models_weebi/base.dart' show EndpointBase;
import 'package:models_weebi/db.dart';
import 'package:services_weebi/src/article_no_sembast/delete_forever_line.dart';

class DeleteForeverLineArticleRpc extends DeleteForeverLineArticleAbstractRpc
    implements EndpointBase<void, LineOfArticles> {
  final DbArticles _database;

  const DeleteForeverLineArticleRpc(this._database);

  @override
  Future<void> request(LineOfArticles data) async {
    final dbStore = intMapStoreFactory.store('articles');
    final recordSnapshot = await dbStore.find(_database.db);
    if (recordSnapshot.isNotEmpty) {
      await dbStore.delete(_database.db,
          finder: Finder(filter: Filter.equals('id', data.id)));
    }

    return;
  }
}
