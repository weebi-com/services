// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class DeleteAllArticleCalibreAbstractRpc
    implements EndpointBase<void, List<ArticleCalibre>> {
  const DeleteAllArticleCalibreAbstractRpc();

  @override
  Future<void> request(List<ArticleCalibre> products) async {
    return;
  }
}

class DeleteAllArticleCalibreFakeRpc extends DeleteAllArticleCalibreAbstractRpc
    implements EndpointBase<void, List<ArticleCalibre>> {
  const DeleteAllArticleCalibreFakeRpc();

  @override
  Future<void> request(List<ArticleCalibre> products) async {
    return;
  }
}
