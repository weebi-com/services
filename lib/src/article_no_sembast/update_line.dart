// Package imports:

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLine;
import 'package:models_weebi/base.dart' show ArticleAbstract, EndpointBase;

abstract class UpdateArticleLineAbstractRpc<A extends ArticleAbstract>
    implements EndpointBase<ArticleLine<A>, ArticleLine<A>> {
  const UpdateArticleLineAbstractRpc();

  @override
  Future<ArticleLine<A>> request(ArticleLine<A> data) async {
    return data;
  }
}

class UpdateLineArticleFakeRpc<A extends ArticleAbstract>
    extends UpdateArticleLineAbstractRpc<A>
    implements EndpointBase<ArticleLine<A>, ArticleLine<A>> {
  const UpdateLineArticleFakeRpc();

  @override
  Future<ArticleLine<A>> request(ArticleLine<A> data) async {
    return data;
  }
}
