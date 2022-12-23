import 'package:models_weebi/base.dart';
import 'package:sembast/sembast.dart';

class DbStoresWeebi extends DbStoresBase {
  static final contacts =
      intMapStoreFactory.store('herders'); // * this is not a mistaker
  static final config = stringMapStoreFactory.store('config'); // not used
  static final shop = intMapStoreFactory.store('shop');
  static final oldProducts =
      intMapStoreFactory.store('products'); // only used for oldDb migration
  // do not be tempted to use or rename herders to contacts
  // only named the db for user convenience
}
