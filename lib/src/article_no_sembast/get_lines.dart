// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class GetArticlesLinesAbstractRpc
    implements EndpointBase<List<LineOfArticles>, void> {
  const GetArticlesLinesAbstractRpc();
  @override
  Future<List<LineOfArticles>> request(void data) async {
    return <LineOfArticles>[];
  }
}

class GetLinesFakeRpc extends GetArticlesLinesAbstractRpc
    implements EndpointBase<List<LineOfArticles>, void> {
  const GetLinesFakeRpc();
  @override
  Future<List<LineOfArticles>> request(void data) async {
    return <LineOfArticles>[];
  }
}
