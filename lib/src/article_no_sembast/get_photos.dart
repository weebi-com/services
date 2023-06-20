// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticlePhoto;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class GetPhotosAbstractRpc
    implements EndpointBase<List<ArticlePhoto>, void> {
  const GetPhotosAbstractRpc();
  @override
  Future<List<ArticlePhoto>> request(void data) async {
    return <ArticlePhoto>[];
  }
}

class GetPhotosFakeRpc extends GetPhotosAbstractRpc
    implements EndpointBase<List<ArticlePhoto>, void> {
  const GetPhotosFakeRpc();
  @override
  Future<List<ArticlePhoto>> request(void data) async {
    return <ArticlePhoto>[];
  }
}
