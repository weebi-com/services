import 'package:models_weebi/base.dart' show ArticleAbstract, EndpointBase;

abstract class DeleteForeverArticleAbstractRpc<ArticleAbstract>
    implements EndpointBase<void, ArticleAbstract> {
  const DeleteForeverArticleAbstractRpc();
  @override
  Future<void> request(ArticleAbstract data) async {
    return;
  }
}

class DeleteForeverArticleFakeRpc<A extends ArticleAbstract>
    extends DeleteForeverArticleAbstractRpc<A>
    implements EndpointBase<void, A> {
  const DeleteForeverArticleFakeRpc();

  @override
  Future<void> request(A data) async {
    return;
  }
}
