// Package imports:

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/base.dart' show EndpointBase;

class UpdateLineArticleFakeRpc
    implements EndpointBase<LineOfArticles, LineOfArticles> {
  const UpdateLineArticleFakeRpc();

  @override
  Future<LineOfArticles> request(LineOfArticles data) async {
    return data;
  }
}
