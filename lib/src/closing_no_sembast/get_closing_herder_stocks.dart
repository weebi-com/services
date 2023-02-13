import 'package:models_weebi/closings.dart';
import 'package:models_weebi/base.dart';

abstract class GetClosingsHerderStocksAbstractRpc
    implements EndpointBase<List<ClosingStockHerder>, void> {
  const GetClosingsHerderStocksAbstractRpc();
  @override
  Future<List<ClosingStockHerder>> request(void _) async {
    return [];
  }
}

class GetClosingsHerderStocksFakeRpc
    extends GetClosingsHerderStocksAbstractRpc {
  const GetClosingsHerderStocksFakeRpc();
  @override
  Future<List<ClosingStockHerder>> request(void _) async {
    return [];
  }
}
