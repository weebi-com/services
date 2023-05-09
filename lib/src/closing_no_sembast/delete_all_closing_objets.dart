import 'package:models_weebi/base.dart';

abstract class DeleteAllClosingObjectsAbstractRpc
    implements EndpointBase<void, List> {
  const DeleteAllClosingObjectsAbstractRpc();
  @override
  Future<void> request(List emptyList) async {}
}

class DeleteAllClosingObjectsFakeRpc
    extends DeleteAllClosingObjectsAbstractRpc {
  const DeleteAllClosingObjectsFakeRpc();
  @override
  Future<void> request(List emptyList) async {}
}
