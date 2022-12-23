// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/db.dart';
import 'package:models_weebi/base.dart' show EndpointBase;

// this adds all but does not erase anything when importing
class AddAllLineArticlesRpc
    implements EndpointBase<void, List<LineOfArticles>> {
  final DbArticles _database;

  const AddAllLineArticlesRpc(this._database);

  @override
  Future<void> request(List<LineOfArticles> lines) async {
    final _dbStore = intMapStoreFactory.store('articles');
    _dbStore.addAll(_database.db, lines.map((e) => e.toMap()).toList());
  }
}
