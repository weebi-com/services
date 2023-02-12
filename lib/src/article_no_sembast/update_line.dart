// Package imports:

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class UpdateArticleLineAbstractRpc
    implements EndpointBase<LineOfArticles, LineOfArticles> {
  const UpdateArticleLineAbstractRpc();

  @override
  Future<LineOfArticles> request(LineOfArticles data) async {
    return data;
  }
}

class UpdateLineArticleFakeRpc extends UpdateArticleLineAbstractRpc
    implements EndpointBase<LineOfArticles, LineOfArticles> {
  const UpdateLineArticleFakeRpc();

  @override
  Future<LineOfArticles> request(LineOfArticles data) async {
    return data;
  }
}
