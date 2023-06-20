import 'package:models_weebi/base.dart';
import 'package:sembast/sembast.dart';

class DbStoresWeebi extends DbStoresBase {
  static final contacts =
      intMapStoreFactory.store('herders'); // * this is not a mistaker
  static final config = stringMapStoreFactory.store('config'); // not used
  static final shop = intMapStoreFactory.store('shop');
  static final articlePhotos = intMapStoreFactory.store('photos');
  static final oldProducts =
      intMapStoreFactory.store('products'); // only used for oldDb migration
  // do not be tempted to use or rename herders to contacts
  // only named the db for user convenience
}

class DbStoresClosings {
  static final closingHerdersStoreDb =
      intMapStoreFactory.store('closing_herders');
  static final closingLedgersStoreDb =
      intMapStoreFactory.store('closing_ledgers');
  static final closingLedgerShopsStoreDb =
      intMapStoreFactory.store('closing_ledger_shops');
  static final closingRangesStoreDb =
      intMapStoreFactory.store('closing_ranges');
  static final closingStocksStoreDb =
      intMapStoreFactory.store('closing_stocks');
  static final closingStockShopsStoreDb =
      intMapStoreFactory.store('closing_stock_shops');
  static final closingStockProductsStoreDb =
      intMapStoreFactory.store('closing_stock_products');
  static final closingHerderStocksStoreDb =
      intMapStoreFactory.store('closing_stocks_herders');
}
