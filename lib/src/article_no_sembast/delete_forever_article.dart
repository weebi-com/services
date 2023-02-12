// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;

import 'package:models_weebi/base.dart' show ArticleAbstract, EndpointBase;
import 'package:models_weebi/db.dart';
import 'package:sembast/sembast.dart';

class DeleteForeverArticleFakeRpc<A extends ArticleAbstract>
    implements EndpointBase<void, A> {
  const DeleteForeverArticleFakeRpc();

  @override
  Future<void> request(A data) async {
    return;
  }
}
