// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLine;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class DeleteAllArticleLineAbstractRpc
    implements EndpointBase<void, List<ArticleLine>> {
  const DeleteAllArticleLineAbstractRpc();

  @override
  Future<void> request(List<ArticleLine> products) async {
    return;
  }
}

class DeleteAllArticleLineFakeRpc extends DeleteAllArticleLineAbstractRpc
    implements EndpointBase<void, List<ArticleLine>> {
  const DeleteAllArticleLineFakeRpc();

  @override
  Future<void> request(List<ArticleLine> products) async {
    return;
  }
}
