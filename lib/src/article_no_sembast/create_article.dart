// Package imports:
import 'package:collection/collection.dart';

// Project imports:
import 'package:models_weebi/base.dart' show ArticleAbstract, EndpointBase;

class CreateArticleFakeRpc<A extends ArticleAbstract>
    implements EndpointBase<A, A> {
  const CreateArticleFakeRpc();

  @override
  Future<A> request(A data, {bool isTest = false}) async {
    return data;
  }
}
