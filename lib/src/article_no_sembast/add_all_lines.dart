// Package imports:

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/db.dart';
import 'package:models_weebi/base.dart' show EndpointBase;

// this adds all but does not erase anything when importing

abstract class AddAllArticlesLineAbstract
    implements EndpointBase<void, List<LineOfArticles>> {
  const AddAllArticlesLineAbstract();
  @override
  Future<void> request(List<LineOfArticles> lines) async {}
}

class AddAllLineArticlesFakeRpc extends AddAllArticlesLineAbstract
    implements EndpointBase<void, List<LineOfArticles>> {
  const AddAllLineArticlesFakeRpc();

  @override
  Future<void> request(List<LineOfArticles> lines) async {}
}
