// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticlePhoto;
import 'package:models_weebi/base.dart';

abstract class DeleteForeverArticlePhotoAbstractRpc
    implements EndpointBase<void, ArticlePhoto> {
  const DeleteForeverArticlePhotoAbstractRpc();
  @override
  Future<void> request(ArticlePhoto data) async {
    return;
  }
}

class DeleteForeverArticlePhotoFakeRpc
    extends DeleteForeverArticlePhotoAbstractRpc
    implements EndpointBase<void, ArticlePhoto> {
  const DeleteForeverArticlePhotoFakeRpc();
  @override
  Future<void> request(ArticlePhoto data) async {
    return;
  }
}
