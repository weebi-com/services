// Package imports:
import 'package:sembast/sembast.dart' as sembast;

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/base.dart' show EndpointBase;
import 'package:models_weebi/db.dart';

abstract class GetArticlesLinesAbstractRpc
    implements EndpointBase<List<LineOfArticles>, void> {
  const GetArticlesLinesAbstractRpc();
  @override
  Future<List<LineOfArticles>> request(void data) async {
    return <LineOfArticles>[];
  }
}

class GetLinesFakeRpc extends GetArticlesLinesAbstractRpc
    implements EndpointBase<List<LineOfArticles>, void> {
  const GetLinesFakeRpc();
  @override
  Future<List<LineOfArticles>> request(void data) async {
    return <LineOfArticles>[];
  }
}
