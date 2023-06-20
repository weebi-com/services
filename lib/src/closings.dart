import 'package:services_weebi/src/closing/add_all_closing_ledger_shops.dart';
import 'package:services_weebi/src/closing/delete_all_closing_objets.dart';
import 'package:services_weebi/src/closing/get_closing_herder_stocks.dart';
import 'package:services_weebi/src/closing/get_closing_ledger_shops.dart';
import 'package:services_weebi/src/closing/get_closing_ledgers.dart';
import 'package:services_weebi/src/closing/get_closing_ranges.dart';
import 'package:services_weebi/src/closing/get_closing_stock_products.dart';
import 'package:services_weebi/src/closing/get_closing_stock_shops.dart';
import 'package:services_weebi/src/closing/get_closing_stocks.dart';
import 'package:services_weebi/src/closing/add_all_closing_herder_stocks.dart';
import 'package:services_weebi/src/closing/add_all_closing_stock_products.dart';
import 'package:services_weebi/src/closing/add_all_closing_stock_shops.dart';
import 'package:services_weebi/src/closing/add_all_closing_ledgers.dart';
import 'package:services_weebi/src/closing/create_closing_range.dart';
import 'package:services_weebi/src/closing/delete_closing_range.dart';
import 'package:services_weebi/src/closing/get_closing_herders.dart';
import 'package:services_weebi/src/closing/add_all_closing_herders.dart';
import 'package:services_weebi/src/closing/add_all_closing_ranges.dart';
import 'package:services_weebi/src/closing/add_all_closing_stock.dart';
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_herder_stocks.dart';
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_herders.dart';
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_ledger_shops.dart';
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_ledgers.dart';
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_ranges.dart';
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_stock.dart';
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_stock_products.dart';
import 'package:services_weebi/src/closing_no_sembast/add_all_closing_stock_shops.dart';
import 'package:services_weebi/src/closing_no_sembast/create_closing_range.dart';
import 'package:services_weebi/src/closing_no_sembast/delete_all_closing_objets.dart';
import 'package:services_weebi/src/closing_no_sembast/delete_closing_range.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_herder_stocks.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_herders.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_ledger_shops.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_ledgers.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_ranges.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_stock_products.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_stock_shops.dart';
import 'package:services_weebi/src/closing_no_sembast/get_closing_stocks.dart';

abstract class ClosingsServiceAbstract {
  final CreateClosingRangeAbstractRpc createClosingRangeRpc;
  final DeleteClosingRangeAbstractRpc deleteClosingRangeRpc;
  final AddAllClosingRangesAbstractRpc addAllClosingRangesRpc;
  final GetClosingRangesAbstractRpc getClosingRangesRpc;

  final GetClosingLedgersAbstractRpc getClosingLedgersRpc;
  final AddAllClosingLedgersAbstractRpc addAllClosingLedgersRpc;

  final GetClosingLedgerShopsAbstractRpc getClosingLedgerShopsRpc;
  final AddAllClosingLedgerShopsAbstractRpc addAllClosingLedgerShopsRpc;

  final GetClosingsHerdersAbstractRpc getClosingsHerdersRpc;
  final AddAllClosingsHerdersAbstractRpc addAllClosingsHerdersRpc;

  final GetClosingsStocksAbstractRpc getClosingsStocksRpc;
  final AddAllClosingsStocksFullAbstractRpc addAllClosingsStocksRpc;

  final GetClosingsStockShopsAbstractRpc getClosingsStockShopsRpc;
  final AddAllClosingsStockShopsAbstractRpc addAllClosingsStockShopsRpc;

  final GetClosingsStockProductsAbstractRpc getClosingsStockProductsRpc;
  final AddAllClosingsStockProductsAbstractRpc addAllClosingsStockProductsRpc;

  final GetClosingsHerderStocksAbstractRpc getClosingsHerderStocksRpc;
  final AddAllClosingsHerderStocksAbstractRpc addAllClosingsHerderStocksRpc;
  // * one to delete them all
  final DeleteAllClosingObjectsAbstractRpc deleteAllClosingObjects;

  ClosingsServiceAbstract(
    this.getClosingLedgersRpc,
    this.addAllClosingLedgersRpc,
    this.createClosingRangeRpc,
    this.deleteClosingRangeRpc,
    this.getClosingsHerdersRpc,
    this.addAllClosingsHerdersRpc,
    this.addAllClosingRangesRpc,
    this.getClosingRangesRpc,
    this.getClosingLedgerShopsRpc,
    this.addAllClosingLedgerShopsRpc,
    this.getClosingsStocksRpc,
    this.addAllClosingsStocksRpc,
    this.getClosingsStockShopsRpc,
    this.addAllClosingsStockShopsRpc,
    this.getClosingsStockProductsRpc,
    this.addAllClosingsStockProductsRpc,
    this.getClosingsHerderStocksRpc,
    this.addAllClosingsHerderStocksRpc,
    this.deleteAllClosingObjects,
  );
}

class ClosingsService extends ClosingsServiceAbstract {
  ClosingsService(
      CreateClosingRangeRpc createClosingRangeRpc,
      DeleteClosingRangeRpc deleteClosingRangeRpc,
      AddAllClosingRangesRpc addAllClosingRangesRpc,
      GetClosingRangesRpc getClosingRangesRpc,
      GetClosingLedgersRpc getClosingLedgersRpc,
      AddAllClosingLedgersRpc addAllClosingLedgersRpc,
      GetClosingLedgerShopsRpc getClosingLedgerShopsRpc,
      AddAllClosingLedgerShopsRpc addAllClosingLedgerShopsRpc,
      GetClosingsHerdersRpc getClosingsHerdersRpc,
      AddAllClosingsHerdersRpc addAllClosingsHerdersRpc,
      GetClosingsStocksRpc getClosingsStocksRpc,
      AddAllClosingsStocksFullRpc addAllClosingsStocksRpc,
      GetClosingsStockShopsRpc getClosingsStockShopsRpc,
      AddAllClosingsStockShopsRpc addAllClosingsStockShopsRpc,
      GetClosingsStockProductsRpc getClosingsStockProductsRpc,
      AddAllClosingsStockProductsRpc addAllClosingsStockProductsRpc,
      GetClosingsHerderStocksRpc getClosingsHerderStocksRpc,
      AddAllClosingsHerderStocksRpc addAllClosingsHerderStocksRpc,
      // * one to delete them all
      DeleteAllClosingObjects deleteAllClosingObjects)
      : super(
          getClosingLedgersRpc,
          addAllClosingLedgersRpc,
          createClosingRangeRpc,
          deleteClosingRangeRpc,
          getClosingsHerdersRpc,
          addAllClosingsHerdersRpc,
          addAllClosingRangesRpc,
          getClosingRangesRpc,
          getClosingLedgerShopsRpc,
          addAllClosingLedgerShopsRpc,
          getClosingsStocksRpc,
          addAllClosingsStocksRpc,
          getClosingsStockShopsRpc,
          addAllClosingsStockShopsRpc,
          getClosingsStockProductsRpc,
          addAllClosingsStockProductsRpc,
          getClosingsHerderStocksRpc,
          addAllClosingsHerderStocksRpc,
          deleteAllClosingObjects,
        );
}

class ClosingsServiceFake implements ClosingsServiceAbstract {
  const ClosingsServiceFake();

  @override
  get addAllClosingLedgerShopsRpc => AddAllClosingLedgerShopsFakeRpc();

  @override
  get addAllClosingLedgersRpc => AddAllClosingLedgersFakeRpc();

  @override
  get addAllClosingRangesRpc => AddAllClosingRangesFakeRpc();

  @override
  get addAllClosingsHerderStocksRpc => AddAllClosingsHerderStocksFakeRpc();

  @override
  get addAllClosingsHerdersRpc => AddAllClosingsHerdersFakeRpc();

  @override
  get addAllClosingsStockProductsRpc => AddAllClosingsStockProductsFakeRpc();

  @override
  get addAllClosingsStockShopsRpc => AddAllClosingsStockShopsFakeRpc();

  @override
  get addAllClosingsStocksRpc => AddAllClosingsStocksFullFakeRpc();

  @override
  get createClosingRangeRpc => CreateClosingRangeFakeRpc();

  @override
  get deleteAllClosingObjects => DeleteAllClosingObjectsFakeRpc();

  @override
  get deleteClosingRangeRpc => DeleteClosingRangeFakeRpc();

  @override
  get getClosingLedgerShopsRpc => GetClosingLedgerShopsFakeRpc();

  @override
  get getClosingLedgersRpc => GetClosingLedgersFakeRpc();

  @override
  get getClosingRangesRpc => GetClosingRangesFakeRpc();

  @override
  get getClosingsHerderStocksRpc => GetClosingsHerderStocksFakeRpc();

  @override
  get getClosingsHerdersRpc => GetClosingsHerdersFakeRpc();

  @override
  get getClosingsStockProductsRpc => GetClosingsStockProductsFakeRpc();

  @override
  get getClosingsStockShopsRpc => GetClosingsStockShopsFakeRpc();

  @override
  get getClosingsStocksRpc => GetClosingsStocksFakeRpc();
}
