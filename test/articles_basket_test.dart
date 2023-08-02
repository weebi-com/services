import 'package:sembast/sembast_memory.dart';
import 'package:services_weebi/db_wrappers.dart';
import 'package:services_weebi/services_weebi.dart';
import 'package:test/test.dart';
import 'package:models_weebi/weebi_models.dart';

void main() async {
  final db = await databaseFactoryMemory.openDatabase('test.db');
  final service =
      ArticlesServiceInstantiater.instArticlesStoreSembastTest(DbArticles(db));

  group('test basket', () {
    test('create basket & update article', () async {
      final calibreCreated = await service.createArticleCalibreRpc
          .request(ArticleCalibre.dummyBasket);
      final calibres = await service.getArticlesCalibresRpc.request([]);
      expect(calibres.length, 1);
      expect(calibreCreated == ArticleCalibre.dummyBasket, isTrue);
      final calibreFirst = calibres.first;
      expect(calibreFirst.articles.first,
          ArticleCalibre.dummyBasket.articles.first);
      expect(calibreFirst.articles.first.id, 1);
      expect(
          (calibreFirst.articles.first as ArticleBasket)
              .proxies
              .first
              .calibreId,
          2);
      expect(
          (calibreFirst.articles.first as ArticleBasket)
              .proxies
              .first
              .articleId,
          1);
      expect(
          (calibreFirst.articles.first as ArticleBasket).proxies.first.id, 1);

      final _articleBasketLine = ArticleCalibre.dummyBasket.articles.first
          .copyWith(fullName: 'ouais ouais');
      final updated =
          await service.updateArticleRpc.request(_articleBasketLine);
      final calibres2 = await service.getArticlesCalibresRpc.request([]);
      expect(updated.fullName, 'ouais ouais');
      expect(calibres2.first.articles.first.fullName, 'ouais ouais');
      //'delete forever calibre basket'
      await service.deleteForeverCalibreRpc.request(ArticleCalibre.dummyBasket);
      final calibres3 = await service.getArticlesCalibresRpc.request([]);
      expect(calibres3.length, 0);
    });
    test('createAll && deleteAll', () async {
      await service.createAllArticleCalibreRpc
          .request([ArticleCalibre.dummyRetail, ArticleCalibre.dummyBasket]);
      await service.deleteAllCalibresRpc.request([]);
      final calibres = await service.getArticlesCalibresRpc.request([]);
      expect(calibres.isEmpty, true);
    });
  });
}
