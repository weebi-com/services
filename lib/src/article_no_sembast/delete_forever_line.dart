// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLine;

import 'package:models_weebi/base.dart' show EndpointBase;

abstract class DeleteForeverLineArticleAbstractRpc
    implements EndpointBase<void, ArticleLine> {
  const DeleteForeverLineArticleAbstractRpc();

  @override
  Future<void> request(ArticleLine data) async {
    return;
  }
}

class DeleteForeverLineArticleFakeRpc
    extends DeleteForeverLineArticleAbstractRpc
    implements EndpointBase<void, ArticleLine> {
  const DeleteForeverLineArticleFakeRpc();

  @override
  Future<void> request(ArticleLine data) async {
    return;
  }
}
