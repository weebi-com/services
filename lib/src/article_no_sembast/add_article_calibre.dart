// Package imports:
// import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;
import 'package:models_weebi/base.dart';
// import 'package:models_weebi/weebi_models.dart' show ArticleCalibre;
// import 'package:services_weebi/db_wrappers.dart';

// import 'package:models_weebi/weebi_models.dart' show ArticleWeebi;
// import 'package:models_weebi/weebi_models.dart' show LotWeebi;

abstract class CreateArticleCalibreAbstractRpc<A extends ArticleAbstract>
    implements EndpointBase<ArticleCalibre<A>, ArticleCalibre<A>> {
  const CreateArticleCalibreAbstractRpc();

  @override
  Future<ArticleCalibre<A>> request(ArticleCalibre<A> data) async {
    return data;
  }
}

class CreateArticleCalibreFakeRpc<A extends ArticleAbstract>
    extends CreateArticleCalibreAbstractRpc<A>
    implements EndpointBase<ArticleCalibre<A>, ArticleCalibre<A>> {
  CreateArticleCalibreFakeRpc();

  @override
  Future<ArticleCalibre<A>> request(ArticleCalibre<A> data) async {
    return data;
  }
}
