// Package imports:
// import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLines;
import 'package:models_weebi/base.dart';
// import 'package:models_weebi/weebi_models.dart' show ArticleLines;
// import 'package:models_weebi/db.dart';
import 'package:models_weebi/base.dart' show EndpointBase;

// import 'package:models_weebi/weebi_models.dart' show ArticleWeebi;
// import 'package:models_weebi/weebi_models.dart' show LotWeebi;

abstract class CreateArticleLineAbstractRpc
    implements EndpointBase<ArticleLines, ArticleLines> {
  const CreateArticleLineAbstractRpc();

  @override
  Future<ArticleLines> request(ArticleLines data) async {
    return data;
  }
}

class CreateArticleLineFakeRpc extends CreateArticleLineAbstractRpc
    implements EndpointBase<ArticleLines, ArticleLines> {
  CreateArticleLineFakeRpc();

  @override
  Future<ArticleLines> request(ArticleLines data) async {
    return data;
  }
}
