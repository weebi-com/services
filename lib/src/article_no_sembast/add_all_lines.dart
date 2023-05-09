// Package imports:

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLine;
import 'package:models_weebi/base.dart' show EndpointBase;

// this adds all but does not erase anything when importing

abstract class AddAllArticlesLineAbstract
    implements EndpointBase<void, List<ArticleLine>> {
  const AddAllArticlesLineAbstract();
  @override
  Future<void> request(List<ArticleLine> lines) async {}
}

class AddAllLineArticlesFakeRpc extends AddAllArticlesLineAbstract {
  const AddAllLineArticlesFakeRpc();

  @override
  Future<void> request(List<ArticleLine> lines) async {}
}
