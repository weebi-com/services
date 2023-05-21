// Project imports:
import 'package:models_weebi/base.dart' show ArticleAbstract, EndpointBase;

abstract class CreateArticleAbstractRpc<ArticleAbstract>
    implements EndpointBase<ArticleAbstract, ArticleAbstract> {
  const CreateArticleAbstractRpc();
  @override
  Future<ArticleAbstract> request(ArticleAbstract data,
      {bool isTest = false}) async {
    return data;
  }
}

class CreateArticleFakeRpc<A extends ArticleAbstract>
    extends CreateArticleAbstractRpc<A> implements EndpointBase<A, A> {
  const CreateArticleFakeRpc();

  @override
  Future<A> request(A data, {bool isTest = false}) async {
    return data;
  }
}
