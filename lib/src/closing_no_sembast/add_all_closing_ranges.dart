import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class AddAllClosingRangesAbstractRpc
    implements EndpointBase<void, List<ClosingRange>> {
  const AddAllClosingRangesAbstractRpc();
  @override
  Future<void> request(List<ClosingRange> closings) async {}
}

class AddAllClosingRangesFakeRpc extends AddAllClosingRangesAbstractRpc {
  AddAllClosingRangesFakeRpc();

  @override
  Future<void> request(List<ClosingRange> closings) async {}
}
