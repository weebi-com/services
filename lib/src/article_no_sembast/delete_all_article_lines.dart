// Package imports:
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/base.dart' show EndpointBase;
import 'package:models_weebi/db.dart';

abstract class DeleteAllArticleLinesAbstractRpc
    implements EndpointBase<void, List<LineOfArticles>> {
  const DeleteAllArticleLinesAbstractRpc();

  @override
  Future<void> request(List<LineOfArticles> products) async {
    return;
  }
}

class DeleteAllArticleLinesFakeRpc extends DeleteAllArticleLinesAbstractRpc
    implements EndpointBase<void, List<LineOfArticles>> {
  DeleteAllArticleLinesFakeRpc();

  @override
  Future<void> request(List<LineOfArticles> products) async {
    return;
  }
}
