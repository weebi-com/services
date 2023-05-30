// Project imports:
import 'package:services_weebi/src/article/get_article_calibres.dart';
import 'package:services_weebi/src/article/create_article.dart';
import 'package:services_weebi/src/article/create_calibre.dart';
import 'package:services_weebi/src/article/delete_forever_article.dart';
import 'package:services_weebi/src/article/delete_forever_calibre_and_articles.dart';
import 'package:services_weebi/src/article/add_all_calibres_and_articles.dart';
import 'package:services_weebi/src/article/update_article.dart';
import 'package:services_weebi/src/article/update_calibre.dart';
import 'package:services_weebi/src/article/delete_all_articles_and_calibres.dart';
import 'package:services_weebi/src/article_no_sembast/add_all_calibres.dart';
import 'package:services_weebi/src/article_no_sembast/add_article.dart';
import 'package:services_weebi/src/article_no_sembast/create_calibre.dart';
import 'package:services_weebi/src/article_no_sembast/delete_all_articles_and_calibres.dart';
import 'package:services_weebi/src/article_no_sembast/delete_forever_article.dart';
import 'package:services_weebi/src/article_no_sembast/delete_forever_calibre_and_its_articles.dart';
import 'package:services_weebi/src/article_no_sembast/get_calibres.dart';
import 'package:services_weebi/src/article_no_sembast/update_article.dart';
import 'package:services_weebi/src/article_no_sembast/update_calibre.dart';

abstract class ArticlesServiceAbstract {
  final GetArticleCalibersAbstractRpc getArticlesCalibresRpc;
  final AddAllArticleCalibresAbstract addAllArticleCalibreRpc;
  final UpdateArticleCalibreAbstractRpc updateArticleCalibreRpc;
  final DeleteForeverLineArticleAbstractRpc deleteForeverLineRpc;
  final UpdateArticleAbstractRpc updateArticleRpc;
  final CreateArticleCalibreAbstractRpc createLineArticleRpc;
  final CreateArticleAbstractRpc createArticleRpc;
  final DeleteForeverArticleAbstractRpc deleteForeverArticleRpc;
  final DeleteAllArticleCalibreAbstractRpc deleteAllCalibresRpc;

  ArticlesServiceAbstract(
      this.getArticlesCalibresRpc,
      this.addAllArticleCalibreRpc,
      this.updateArticleCalibreRpc,
      this.deleteForeverLineRpc,
      this.updateArticleRpc,
      this.createLineArticleRpc,
      this.createArticleRpc,
      this.deleteForeverArticleRpc,
      this.deleteAllCalibresRpc);
}

class ArticlesServiceNoSembast implements ArticlesServiceAbstract {
  static final count = 9;

  const ArticlesServiceNoSembast();

  @override
  AddAllArticleCalibresAbstract get addAllArticleCalibreRpc =>
      AddAllLineArticlesFakeRpc();

  @override
  CreateArticleAbstractRpc get createArticleRpc => CreateArticleFakeRpc();

  @override
  CreateArticleCalibreAbstractRpc get createLineArticleRpc =>
      CreateArticleCalibreFakeRpc();

  @override
  DeleteAllArticleCalibreAbstractRpc get deleteAllCalibresRpc =>
      DeleteAllArticleCalibreFakeRpc();

  @override
  DeleteForeverArticleAbstractRpc get deleteForeverArticleRpc =>
      DeleteForeverArticleFakeRpc();

  @override
  DeleteForeverLineArticleAbstractRpc get deleteForeverLineRpc =>
      DeleteForeverLineArticleFakeRpc();

  @override
  GetArticleCalibersAbstractRpc get getArticlesCalibresRpc =>
      GetCalibresFakeRpc();

  @override
  UpdateArticleAbstractRpc get updateArticleRpc => UpdateArticleFakeRpc();

  @override
  UpdateArticleCalibreAbstractRpc get updateArticleCalibreRpc =>
      UpdateLineArticleFakeRpc();
}

class ArticlesService extends ArticlesServiceAbstract {
  static final count = 9;
  ArticlesService(
    GetArticleCalibersRpc getCalibresRpc,
    AddAllArticleCalibresRpc addAllCalibresRpc,
    UpdateLineArticleRpc updateLineRpc,
    DeleteForeverCalibreAndItsArticlesRpc deleteForeverLineRpc,
    UpdateArticleRpc updateArticleRpc,
    CreateArticleCalibreRpc createLineArticleRpc,
    CreateArticleRpc createArticleRpc,
    DeleteForeverArticleRpc deleteForeverArticleRpc,
    DeleteAllArticleCalibreRpc deleteAllCalibresRpc,
  ) : super(
          getCalibresRpc,
          addAllCalibresRpc,
          updateLineRpc,
          deleteForeverLineRpc,
          updateArticleRpc,
          createLineArticleRpc,
          createArticleRpc,
          deleteForeverArticleRpc,
          deleteAllCalibresRpc,
        );
}
