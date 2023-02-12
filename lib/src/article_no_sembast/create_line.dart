// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_base/base.dart' show EndpointBase;
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/db.dart';
import 'package:models_weebi/base.dart' show EndpointBase;

// import 'package:models_weebi/weebi_models.dart' show ArticleWeebi;
// import 'package:models_weebi/weebi_models.dart' show LotWeebi;

abstract class CreateArticleLineAbstractRpc
    implements EndpointBase<LineOfArticles, LineOfArticles> {
  const CreateArticleLineAbstractRpc();

  @override
  Future<LineOfArticles> request(LineOfArticles data) async {
    return data;
  }
}

class CreateArticleLineFakeRpc extends CreateArticleLineAbstractRpc
    implements EndpointBase<LineOfArticles, LineOfArticles> {
  CreateArticleLineFakeRpc();

  @override
  Future<LineOfArticles> request(LineOfArticles data) async {
    return data;
  }
}
