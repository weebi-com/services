// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLines;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class DeleteAllArticleLinesAbstractRpc
    implements EndpointBase<void, List<ArticleLines>> {
  const DeleteAllArticleLinesAbstractRpc();

  @override
  Future<void> request(List<ArticleLines> products) async {
    return;
  }
}

class DeleteAllArticleLinesFakeRpc extends DeleteAllArticleLinesAbstractRpc
    implements EndpointBase<void, List<ArticleLines>> {
  const DeleteAllArticleLinesFakeRpc();

  @override
  Future<void> request(List<ArticleLines> products) async {
    return;
  }
}
