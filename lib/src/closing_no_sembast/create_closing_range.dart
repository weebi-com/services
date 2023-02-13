import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class CreateClosingRangeAbstractRpc
    implements EndpointBase<ClosingRange, ClosingRange> {
  const CreateClosingRangeAbstractRpc();
  @override
  Future<ClosingRange> request(ClosingRange data) async {
    return data;
  }
}

class CreateClosingRangeFakeRpc extends CreateClosingRangeAbstractRpc {
  const CreateClosingRangeFakeRpc();
  @override
  Future<ClosingRange> request(ClosingRange data) async {
    return data;
  }
}
