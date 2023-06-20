// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticlePhoto;
import 'package:models_weebi/base.dart';

abstract class CreatePhotoAbstractRpc
    implements EndpointBase<ArticlePhoto, ArticlePhoto> {
  const CreatePhotoAbstractRpc();
  @override
  Future<ArticlePhoto> request(ArticlePhoto data) async => data;
}

class CreateArticlePhotoFakeRpc extends CreatePhotoAbstractRpc
    implements EndpointBase<ArticlePhoto, ArticlePhoto> {
  const CreateArticlePhotoFakeRpc();
  @override
  Future<ArticlePhoto> request(ArticlePhoto data) async => data;
}
