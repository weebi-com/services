import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class DeleteClosingRangeAbstractRpc
    implements EndpointBase<void, ClosingRange> {
  const DeleteClosingRangeAbstractRpc();
  @override
  Future<void> request(ClosingRange data) async {}
}

class DeleteClosingRangeFakeRpc extends DeleteClosingRangeAbstractRpc {
  const DeleteClosingRangeFakeRpc();
  @override
  Future<void> request(ClosingRange data) async {}
}
