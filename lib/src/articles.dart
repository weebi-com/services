// Project imports:
import 'package:services_weebi/db_wrappers.dart';
import 'package:services_weebi/src/article/create_photo.dart';
import 'package:services_weebi/src/article/delete_photo.dart';
import 'package:services_weebi/src/article/get_article_calibres.dart';
import 'package:services_weebi/src/article/create_article.dart';
import 'package:services_weebi/src/article/create_calibre.dart';
import 'package:services_weebi/src/article/delete_forever_article.dart';
import 'package:services_weebi/src/article/delete_forever_calibre_and_articles.dart';
import 'package:services_weebi/src/article/add_all_calibres_and_articles.dart';
import 'package:services_weebi/src/article/get_photos.dart';
import 'package:services_weebi/src/article/update_article.dart';
import 'package:services_weebi/src/article/update_calibre.dart';
import 'package:services_weebi/src/article/delete_all_articles_and_calibres.dart';
import 'package:services_weebi/src/article_no_sembast/create_all_calibres.dart';
import 'package:services_weebi/src/article_no_sembast/create_article.dart';
import 'package:services_weebi/src/article_no_sembast/create_calibre.dart';
import 'package:services_weebi/src/article_no_sembast/create_photo.dart';
import 'package:services_weebi/src/article_no_sembast/delete_all_articles_and_calibres.dart';
import 'package:services_weebi/src/article_no_sembast/delete_forever_article.dart';
import 'package:services_weebi/src/article_no_sembast/delete_forever_calibre_and_its_articles.dart';
import 'package:services_weebi/src/article_no_sembast/delete_photo.dart';
import 'package:services_weebi/src/article_no_sembast/get_calibres.dart';
import 'package:services_weebi/src/article_no_sembast/get_photos.dart';
import 'package:services_weebi/src/article_no_sembast/update_article.dart';
import 'package:services_weebi/src/article_no_sembast/update_calibre.dart';

abstract class ArticlesServiceAbstract {
  static const count = 12;
  final GetArticleCalibersAbstractRpc getArticlesCalibresRpc;
  final CreateAllArticleCalibresAbstract createAllArticleCalibreRpc;
  final UpdateArticleCalibreAbstractRpc updateArticleCalibreRpc;
  final DeleteForeverLineArticleAbstractRpc deleteForeverCalibreRpc;
  final UpdateArticleAbstractRpc updateArticleRpc;
  final CreateArticleCalibreAbstractRpc createArticleCalibreRpc;
  final CreatePhotoAbstractRpc createPhotoRpc;
  final CreateArticleAbstractRpc createArticleRpc;
  final DeleteForeverArticleAbstractRpc deleteForeverArticleRpc;
  final DeleteAllArticleCalibreAbstractRpc deleteAllCalibresRpc;
  final DeleteForeverArticlePhotoAbstractRpc deleteForeverPhotoRpc;
  final GetPhotosAbstractRpc getPhotosAbstractRpc;

  ArticlesServiceAbstract(
    this.getArticlesCalibresRpc,
    this.createAllArticleCalibreRpc,
    this.updateArticleCalibreRpc,
    this.deleteForeverCalibreRpc,
    this.updateArticleRpc,
    this.createArticleCalibreRpc,
    this.createArticleRpc,
    this.createPhotoRpc,
    this.deleteForeverArticleRpc,
    this.deleteAllCalibresRpc,
    this.deleteForeverPhotoRpc,
    this.getPhotosAbstractRpc,
  );
}

class ArticlesService extends ArticlesServiceAbstract {
  static const count = ArticlesServiceAbstract.count;
  ArticlesService(
    GetArticleCalibersRpc getCalibresRpc,
    CreateAllArticleCalibresRpc addAllCalibresRpc,
    UpdateCalibreArticleRpc updateLineRpc,
    DeleteForeverCalibreAndItsArticlesRpc deleteForeverLineRpc,
    UpdateArticleRpc updateArticleRpc,
    CreateArticleCalibreRpc createLineArticleRpc,
    CreatePhotoRpc createArticlePhotoRpc,
    CreateArticleRpc createArticleRpc,
    DeleteForeverArticleRpc deleteForeverArticleRpc,
    DeleteForeverPhotoRpc deleteForeverPhotoRpc,
    DeleteAllArticleCalibresRpc deleteAllCalibresRpc,
    GetPhotosRpc getPhotosRpc,
  ) : super(
            getCalibresRpc,
            addAllCalibresRpc,
            updateLineRpc,
            deleteForeverLineRpc,
            updateArticleRpc,
            createLineArticleRpc,
            createArticleRpc,
            createArticlePhotoRpc,
            deleteForeverArticleRpc,
            deleteAllCalibresRpc,
            deleteForeverPhotoRpc,
            getPhotosRpc);
}

abstract class ArticlesServiceInstantiater {
  static get noPersistence => ArticlesServiceNoSembast();

  static ArticlesService instArticlesStoreSembastTest(DbArticles dbArticles) {
    final getCalibresRpc = GetArticleCalibersRpc(dbArticles);
    final createAllArticleCalibresRpc = CreateAllArticleCalibresRpc(dbArticles);
    final updateCalibreArticleRpc = UpdateCalibreArticleRpc(dbArticles);
    final deleteForeverCalibreAndItsArticlesRpc =
        DeleteForeverCalibreAndItsArticlesRpc(dbArticles);
    final updateArticleRpc = UpdateArticleRpc(dbArticles);
    final createArticleCalibreRpc = CreateArticleCalibreRpc(dbArticles);
    final createArticleRpc = CreateArticleRpc(dbArticles);
    final deleteForeverArticleRpc = DeleteForeverArticleRpc(dbArticles);
    final createArticlePhotoRpc = CreatePhotoRpc(dbArticles);
    final deleteForeverPhotoRpc = DeleteForeverPhotoRpc(dbArticles);
    final deleteAllArticleCalibresRpc = DeleteAllArticleCalibresRpc(dbArticles);
    final getPhotosRpc = GetPhotosRpc(dbArticles);
    return ArticlesService(
        getCalibresRpc,
        createAllArticleCalibresRpc,
        updateCalibreArticleRpc,
        deleteForeverCalibreAndItsArticlesRpc,
        updateArticleRpc,
        createArticleCalibreRpc,
        createArticlePhotoRpc,
        createArticleRpc,
        deleteForeverArticleRpc,
        deleteForeverPhotoRpc,
        deleteAllArticleCalibresRpc,
        getPhotosRpc);
  }
}

class ArticlesServiceNoSembast implements ArticlesServiceAbstract {
  const ArticlesServiceNoSembast();

  @override
  get createAllArticleCalibreRpc => const AddAllLineArticlesFakeRpc();

  @override
  get createArticleRpc => const CreateArticleFakeRpc();

  @override
  get createArticleCalibreRpc => const CreateArticleCalibreFakeRpc();

  @override
  get deleteAllCalibresRpc => const DeleteAllArticleCalibreFakeRpc();

  @override
  get deleteForeverArticleRpc => const DeleteForeverArticleFakeRpc();

  @override
  get deleteForeverCalibreRpc => const DeleteForeverLineArticleFakeRpc();

  @override
  get getArticlesCalibresRpc => const GetCalibresFakeRpc();

  @override
  get updateArticleRpc => const UpdateArticleFakeRpc();

  @override
  get updateArticleCalibreRpc => const UpdateLineArticleFakeRpc();

  @override
  get createPhotoRpc => CreateArticlePhotoFakeRpc();

  @override
  get deleteForeverPhotoRpc => const DeleteForeverArticlePhotoFakeRpc();

  @override
  get getPhotosAbstractRpc => const GetPhotosFakeRpc();
}
