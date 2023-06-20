// Package imports:
import 'package:sembast/sembast.dart' as sembast;

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticlePhoto;
import 'package:services_weebi/db_wrappers.dart';
import 'package:services_weebi/services_weebi.dart';
import 'package:services_weebi/src/article_no_sembast/get_photos.dart';

class GetPhotosRpc extends GetPhotosAbstractRpc {
  final DbArticles _database;

  const GetPhotosRpc(this._database);

  @override
  Future<List<ArticlePhoto>> request(void data) async {
    final dbStore = DbStoresWeebi.articlePhotos;
    final recordSnapshot = await dbStore.find(_database.db);
    final List<ArticlePhoto> lines =
        recordSnapshot.map((e) => ArticlePhoto.fromMap(e.value)).toList();
    return lines;
  }
}
