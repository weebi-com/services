// Package imports:

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;
import 'package:models_weebi/base.dart' show EndpointBase;

// this adds all but does not erase anything when importing

abstract class CreateAllArticleCalibresAbstract
    implements EndpointBase<void, List<ArticleCalibre>> {
  const CreateAllArticleCalibresAbstract();
  @override
  Future<void> request(List<ArticleCalibre> lines) async {}
}

class AddAllLineArticlesFakeRpc extends CreateAllArticleCalibresAbstract {
  const AddAllLineArticlesFakeRpc();

  @override
  Future<void> request(List<ArticleCalibre> lines) async {}
}
