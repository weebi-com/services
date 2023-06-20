import 'package:sembast/sembast_memory.dart';
import 'package:services_weebi/db_wrappers.dart';
import 'package:services_weebi/services_weebi.dart';
import 'package:test/test.dart';
import 'package:models_weebi/weebi_models.dart';

void main() async {
  final db = await databaseFactoryMemory.openDatabase('test.db');
  final service =
      ArticlesServiceInstantiater.instArticlesStoreSembastTest(DbArticles(db));
  group('test photo', () {
    test('CRUD photo', () async {
      final photo = await service.createPhotoRpc.request(ArticlePhoto.dummy);
      await service.deleteForeverPhotoRpc.request(photo);
      final photos = await service.getPhotosAbstractRpc.request([]);
      expect(photos.isEmpty, true);
      final photo2 = ArticlePhoto.dummy.copyWith(path: 'lovingDaTest');
      final photo2Saved = await service.createPhotoRpc.request(photo2);
      expect(photo2Saved, photo2);
      final photosBis = await service.getPhotosAbstractRpc.request([]);
      expect(photosBis.first, photo2);
      expect(photosBis.length, 1);
    });
  });

  group('test articles store', () {
    test('create calibre & article, update calibre, delete', () async {
      final calibreCreated = await service.createArticleCalibreRpc
          .request(ArticleCalibre.dummyRetail);
      expect(calibreCreated, ArticleCalibre.dummyRetail);
      expect(calibreCreated.articles.first,
          ArticleCalibre.dummyRetail.articles.first);
      expect(calibreCreated.articles.first.id, 1);
      final calibres = await service.getArticlesCalibresRpc.request([]);
      expect(calibres.length, 1);
      expect(calibres.first, ArticleCalibre.dummyRetail);

      // update
      final testTitle = calibreCreated.copyWith(title: 'poupoupidou');
      final calibreUpdated =
          await service.updateArticleCalibreRpc.request(testTitle);
      expect(calibreUpdated.title, 'poupoupidou');
      final calibres2 = await service.getArticlesCalibresRpc.request([]);
      expect(calibres2.first.title, 'poupoupidou');

      // delete
      await service.deleteForeverCalibreRpc.request(calibreUpdated);
      final calibres3 = await service.getArticlesCalibresRpc.request([]);
      expect(calibres3.length, 0);
    });
    test('create & deactivate & reactivate & update article ', () async {
      final calibreCreated = await service.createArticleCalibreRpc
          .request(ArticleCalibre.dummyRetail);
      final calibre2AWeebiArticle2 = ArticleRetail.dummy.copyWith(
        id: 2,
        fullName: 'truc x2',
        price: 20,
        weight: 2.0,
      );
      final createdArticle2Calibre2 = await service.createArticleRpc
          .request(calibre2AWeebiArticle2, isTest: true);
      expect(createdArticle2Calibre2, calibre2AWeebiArticle2);
      expect(createdArticle2Calibre2.id, 2);
      expect(createdArticle2Calibre2.calibreId, 1);
      final calibres = await service.getArticlesCalibresRpc.request([]);
      expect(
          calibres.firstWhere((element) => element.id == 1).articles.length, 2);
      final now = DateTime.now();
      final deactivated =
          (calibreCreated.articles.first as ArticleRetail).copyWith(
        statusUpdateDate: now,
        status: false,
      );
      final dd = await service.updateArticleRpc.request(deactivated);
      expect(dd.status, false);
      final calibres2 = await service.getArticlesCalibresRpc.request([]);
      expect((calibres2.first.articles.first as ArticleRetail).statusUpdateDate,
          now);
      final reactivated =
          (calibreCreated.articles.first as ArticleRetail).copyWith(
        statusUpdateDate: now,
        status: true,
      );
      final articleReactivated =
          await service.updateArticleRpc.request(reactivated);
      expect(articleReactivated.status, true);
      final calibres3 = await service.getArticlesCalibresRpc.request([]);
      expect((calibres3.first.articles.first as ArticleRetail).statusUpdateDate,
          now);
      final temp =
          ArticleCalibre.dummyRetail.articles.first.copyWith(cost: 123);
      final updated = await service.updateArticleRpc.request(temp);
      expect(updated.cost, 123);
      final calibres4 = await service.getArticlesCalibresRpc.request([]);
      expect((calibres4.first.articles.first as ArticleRetail).cost, 123);
    });
  });

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
