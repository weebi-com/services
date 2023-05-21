// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;
import 'package:models_weebi/base.dart' show EndpointBase;

abstract class GetArticleCalibersAbstractRpc
    implements EndpointBase<List<ArticleCalibre>, void> {
  const GetArticleCalibersAbstractRpc();
  @override
  Future<List<ArticleCalibre>> request(void data) async {
    return <ArticleCalibre>[];
  }
}

class GetCalibresFakeRpc extends GetArticleCalibersAbstractRpc
    implements EndpointBase<List<ArticleCalibre>, void> {
  const GetCalibresFakeRpc();
  @override
  Future<List<ArticleCalibre>> request(void data) async {
    return <ArticleCalibre>[];
  }
}
