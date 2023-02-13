import 'dart:core';

import 'package:models_weebi/base.dart';
import 'package:models_weebi/closings.dart';

abstract class AddAllClosingsHerderStocksAbstractRpc
    implements EndpointBase<void, List<ClosingStockHerder>> {
  const AddAllClosingsHerderStocksAbstractRpc();
  @override
  Future<void> request(List<ClosingStockHerder> c) async {
    return;
  }
}

class AddAllClosingsHerderStocksFakeRpc
    extends AddAllClosingsHerderStocksAbstractRpc {
  const AddAllClosingsHerderStocksFakeRpc();

  @override
  Future<void> request(List<ClosingStockHerder> c) async {}
}
