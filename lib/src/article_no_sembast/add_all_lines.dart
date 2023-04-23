// Package imports:

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLines;
import 'package:models_weebi/base.dart' show EndpointBase;

// this adds all but does not erase anything when importing

abstract class AddAllArticlesLineAbstract
    implements EndpointBase<void, List<ArticleLines>> {
  const AddAllArticlesLineAbstract();
  @override
  Future<void> request(List<ArticleLines> lines) async {}
}

class AddAllLineArticlesFakeRpc extends AddAllArticlesLineAbstract
    implements EndpointBase<void, List<ArticleLines>> {
  const AddAllLineArticlesFakeRpc();

  @override
  Future<void> request(List<ArticleLines> lines) async {}
}
