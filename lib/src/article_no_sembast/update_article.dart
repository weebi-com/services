// Project imports:
import 'package:models_weebi/base.dart' show ArticleAbstract, EndpointBase;

abstract class UpdateArticleAbstractRpc<ArticleAbstract>
    implements EndpointBase<ArticleAbstract, ArticleAbstract> {
  const UpdateArticleAbstractRpc();

  @override
  Future<ArticleAbstract> request(ArticleAbstract data) async {
    return data;
  }
}

class UpdateArticleFakeRpc<A extends ArticleAbstract>
    extends UpdateArticleAbstractRpc<A> implements EndpointBase<A, A> {
  const UpdateArticleFakeRpc();

  @override
  Future<A> request(A data) async {
    return data;
  }
}
