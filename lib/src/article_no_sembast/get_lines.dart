// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLine;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class GetArticlesLinesAbstractRpc
    implements EndpointBase<List<ArticleLine>, void> {
  const GetArticlesLinesAbstractRpc();
  @override
  Future<List<ArticleLine>> request(void data) async {
    return <ArticleLine>[];
  }
}

class GetLinesFakeRpc extends GetArticlesLinesAbstractRpc
    implements EndpointBase<List<ArticleLine>, void> {
  const GetLinesFakeRpc();
  @override
  Future<List<ArticleLine>> request(void data) async {
    return <ArticleLine>[];
  }
}
