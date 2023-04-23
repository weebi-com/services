// Package imports:

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLines;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class UpdateArticleLineAbstractRpc
    implements EndpointBase<ArticleLines, ArticleLines> {
  const UpdateArticleLineAbstractRpc();

  @override
  Future<ArticleLines> request(ArticleLines data) async {
    return data;
  }
}

class UpdateLineArticleFakeRpc extends UpdateArticleLineAbstractRpc
    implements EndpointBase<ArticleLines, ArticleLines> {
  const UpdateLineArticleFakeRpc();

  @override
  Future<ArticleLines> request(ArticleLines data) async {
    return data;
  }
}
