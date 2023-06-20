// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticlePhoto;

import 'package:services_weebi/db_wrappers.dart';
import 'package:sembast/sembast.dart';
import 'package:services_weebi/services_weebi.dart';
import 'package:services_weebi/src/article_no_sembast/delete_photo.dart';

class DeleteForeverPhotoRpc extends DeleteForeverArticlePhotoAbstractRpc {
  final DbArticles _database;

  DeleteForeverPhotoRpc(this._database);

  @override
  Future<void> request(ArticlePhoto data) async {
    final dbStore = DbStoresWeebi.articlePhotos;
    final recordSnapshot = await dbStore.find(_database.db);
    if (recordSnapshot.isEmpty) {
      throw 'no data';
    }
    if (recordSnapshot.isNotEmpty) {
      await dbStore.delete(_database.db,
          finder: Finder(filter: Filter.equals('id', data.calibreId)));
    }
    return;
  }
}
