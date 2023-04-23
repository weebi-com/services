// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLines;

import 'package:models_weebi/base.dart' show EndpointBase;

abstract class DeleteForeverLineArticleAbstractRpc
    implements EndpointBase<void, ArticleLines> {
  const DeleteForeverLineArticleAbstractRpc();

  @override
  Future<void> request(ArticleLines data) async {
    return;
  }
}

class DeleteForeverLineArticleFakeRpc
    extends DeleteForeverLineArticleAbstractRpc
    implements EndpointBase<void, ArticleLines> {
  const DeleteForeverLineArticleFakeRpc();

  @override
  Future<void> request(ArticleLines data) async {
    return;
  }
}
