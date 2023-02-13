import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class GetClosingRangesAbstractRpc
    implements EndpointBase<List<ClosingRange>, void> {
  const GetClosingRangesAbstractRpc();
  @override
  Future<List<ClosingRange>> request(void _) async {
    return [];
  }
}

class GetClosingRangesFakeRpc extends GetClosingRangesAbstractRpc {
  const GetClosingRangesFakeRpc();
  @override
  Future<List<ClosingRange>> request(void _) async {
    return [];
  }
}
