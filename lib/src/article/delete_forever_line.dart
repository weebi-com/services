// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;

import 'package:models_weebi/base.dart' show EndpointBase;
import 'package:models_weebi/db.dart';

class DeleteForeverLineArticleRpc
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

    //List<LineOfArticles> lines =
    //    recordSnapshot.map((e) => LineOfArticles.fromMap(e.value)).toList();
    //LineOfArticles _articleToDelete =
    //    lines.firstWhere((p) => p.id == data.id, orElse: null);
    // await dbStoreArticles.delete(_database.db, finder: Finder(filter: Filter.equals('id', data.id)));
    // await dbStore.delete(_database.db);
    // await dbStore.addAll(_database.db, lines.map((e) => e.toMap()).toList());
    return;
  }
}
