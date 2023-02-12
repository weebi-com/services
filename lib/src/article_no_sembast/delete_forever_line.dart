// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;

import 'package:models_weebi/base.dart' show EndpointBase;
import 'package:models_weebi/db.dart';

abstract class DeleteForeverLineArticleAbstractRpc
    implements EndpointBase<void, LineOfArticles> {
  const DeleteForeverLineArticleAbstractRpc();

  @override
  Future<void> request(LineOfArticles data) async {
    return;
  }
}

class DeleteForeverLineArticleFakeRpc
    extends DeleteForeverLineArticleAbstractRpc
    implements EndpointBase<void, LineOfArticles> {
  const DeleteForeverLineArticleFakeRpc();

  @override
  Future<void> request(LineOfArticles data) async {
    return;
  }
}
