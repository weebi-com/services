// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;

import 'package:models_weebi/base.dart' show EndpointBase;

abstract class DeleteForeverLineArticleAbstractRpc
    implements EndpointBase<void, ArticleCalibre> {
  const DeleteForeverLineArticleAbstractRpc();

  @override
  Future<void> request(ArticleCalibre data) async {
    return;
  }
}

class DeleteForeverLineArticleFakeRpc
    extends DeleteForeverLineArticleAbstractRpc
    implements EndpointBase<void, ArticleCalibre> {
  const DeleteForeverLineArticleFakeRpc();

  @override
  Future<void> request(ArticleCalibre data) async {
    return;
  }
}
