// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticlePhoto;
import 'package:services_weebi/db_wrappers.dart';
import 'package:services_weebi/services_weebi.dart';
import 'package:services_weebi/src/article_no_sembast/create_photo.dart';

class CreatePhotoRpc extends CreatePhotoAbstractRpc {
  final DbArticles _database;
  CreatePhotoRpc(this._database);

  @override
  Future<ArticlePhoto> request(ArticlePhoto data) async {
    final dbStore = DbStoresWeebi.articlePhotos;
    final int key = await dbStore.add(_database.db, data.toMap());
    final raw = await dbStore.record(key).get(_database.db);
    if (raw == null) {
      throw 'error CreateArticlePhotoRpc null';
    }
    return ArticlePhoto.fromMap(raw);
  }
}
