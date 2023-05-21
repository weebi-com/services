// Package imports:

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;
import 'package:models_weebi/base.dart' show ArticleAbstract, EndpointBase;

abstract class UpdateArticleCalibreAbstractRpc<A extends ArticleAbstract>
    implements EndpointBase<ArticleCalibre<A>, ArticleCalibre<A>> {
  const UpdateArticleCalibreAbstractRpc();

  @override
  Future<ArticleCalibre<A>> request(ArticleCalibre<A> data) async {
    return data;
  }
}

class UpdateLineArticleFakeRpc<A extends ArticleAbstract>
    extends UpdateArticleCalibreAbstractRpc<A>
    implements EndpointBase<ArticleCalibre<A>, ArticleCalibre<A>> {
  const UpdateLineArticleFakeRpc();

  @override
  Future<ArticleCalibre<A>> request(ArticleCalibre<A> data) async {
    return data;
  }
}
