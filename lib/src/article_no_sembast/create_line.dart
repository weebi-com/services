// Package imports:
// import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show ArticleLine;
import 'package:models_weebi/base.dart';
// import 'package:models_weebi/weebi_models.dart' show ArticleLine;
// import 'package:models_weebi/db.dart';

// import 'package:models_weebi/weebi_models.dart' show ArticleWeebi;
// import 'package:models_weebi/weebi_models.dart' show LotWeebi;

abstract class CreateArticleLineAbstractRpc<A extends ArticleAbstract>
    implements EndpointBase<ArticleLine<A>, ArticleLine<A>> {
  const CreateArticleLineAbstractRpc();

  @override
  Future<ArticleLine<A>> request(ArticleLine<A> data) async {
    return data;
  }
}

class CreateArticleLineFakeRpc<A extends ArticleAbstract>
    extends CreateArticleLineAbstractRpc<A>
    implements EndpointBase<ArticleLine<A>, ArticleLine<A>> {
  CreateArticleLineFakeRpc();

  @override
  Future<ArticleLine<A>> request(ArticleLine<A> data) async {
    return data;
  }
}
