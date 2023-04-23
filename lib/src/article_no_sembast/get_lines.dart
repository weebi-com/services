// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLines;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class GetArticlesLinesAbstractRpc
    implements EndpointBase<List<ArticleLines>, void> {
  const GetArticlesLinesAbstractRpc();
  @override
  Future<List<ArticleLines>> request(void data) async {
    return <ArticleLines>[];
  }
}

class GetLinesFakeRpc extends GetArticlesLinesAbstractRpc
    implements EndpointBase<List<ArticleLines>, void> {
  const GetLinesFakeRpc();
  @override
  Future<List<ArticleLines>> request(void data) async {
    return <ArticleLines>[];
  }
}
