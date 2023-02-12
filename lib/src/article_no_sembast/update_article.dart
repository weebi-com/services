// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart'
    show Article, ArticleBasket, LineOfArticles;
import 'package:models_weebi/base.dart' show ArticleAbstract, EndpointBase;
import 'package:models_weebi/db.dart';
import 'package:services_weebi/src/db_store_refs.dart';

class UpdateArticleFakeRpc<A extends ArticleAbstract>
    implements EndpointBase<A, A> {
  const UpdateArticleFakeRpc();

  @override
  Future<A> request(A data) async {
    return data;
  }
}
