// Project imports:
import 'package:services_weebi/src/article/get_lines.dart';
import 'package:services_weebi/src/article/create_article.dart';
import 'package:services_weebi/src/article/create_line.dart';
import 'package:services_weebi/src/article/delete_forever_article.dart';
import 'package:services_weebi/src/article/delete_forever_line.dart';
import 'package:services_weebi/src/article/add_all_lines.dart';
import 'package:services_weebi/src/article/update_article.dart';
import 'package:services_weebi/src/article/update_line.dart';
import 'package:services_weebi/src/article/delete_all_article_lines.dart';
import 'package:services_weebi/src/article_no_sembast/add_all_lines.dart';
import 'package:services_weebi/src/article_no_sembast/create_article.dart';
import 'package:services_weebi/src/article_no_sembast/create_line.dart';
import 'package:services_weebi/src/article_no_sembast/delete_all_article_lines.dart';
import 'package:services_weebi/src/article_no_sembast/delete_forever_article.dart';
import 'package:services_weebi/src/article_no_sembast/delete_forever_line.dart';
import 'package:services_weebi/src/article_no_sembast/get_lines.dart';
import 'package:services_weebi/src/article_no_sembast/update_article.dart';
import 'package:services_weebi/src/article_no_sembast/update_line.dart';

abstract class ArticlesServiceAbstract {
  final GetArticlesLinesAbstractRpc getArticlesLinesRpc;
  final AddAllArticlesLineAbstract addAllArticleLineRpc;
  final UpdateArticleLineAbstractRpc updateArticleLineRpc;
  final DeleteForeverLineArticleAbstractRpc deleteForeverLineRpc;
  final UpdateArticleAbstractRpc updateArticleRpc;
  final CreateArticleLineAbstractRpc createLineArticleRpc;
  final CreateArticleAbstractRpc createArticleRpc;
  final DeleteForeverArticleAbstractRpc deleteForeverArticleRpc;
  final DeleteAllArticleLineAbstractRpc deleteAllLinesRpc;

  ArticlesServiceAbstract(
      this.getArticlesLinesRpc,
      this.addAllArticleLineRpc,
      this.updateArticleLineRpc,
      this.deleteForeverLineRpc,
      this.updateArticleRpc,
      this.createLineArticleRpc,
      this.createArticleRpc,
      this.deleteForeverArticleRpc,
      this.deleteAllLinesRpc);
}

class ArticlesServiceNoSembast implements ArticlesServiceAbstract {
  static final count = 9;

  const ArticlesServiceNoSembast();

  @override
  AddAllArticlesLineAbstract get addAllArticleLineRpc =>
      AddAllLineArticlesFakeRpc();

  @override
  CreateArticleAbstractRpc get createArticleRpc => CreateArticleFakeRpc();

  @override
  CreateArticleLineAbstractRpc get createLineArticleRpc =>
      CreateArticleLineFakeRpc();

  @override
  DeleteAllArticleLineAbstractRpc get deleteAllLinesRpc =>
      DeleteAllArticleLineFakeRpc();

  @override
  DeleteForeverArticleAbstractRpc get deleteForeverArticleRpc =>
      DeleteForeverArticleFakeRpc();

  @override
  DeleteForeverLineArticleAbstractRpc get deleteForeverLineRpc =>
      DeleteForeverLineArticleFakeRpc();

  @override
  GetArticlesLinesAbstractRpc get getArticlesLinesRpc => GetLinesFakeRpc();

  @override
  UpdateArticleAbstractRpc get updateArticleRpc => UpdateArticleFakeRpc();

  @override
  UpdateArticleLineAbstractRpc get updateArticleLineRpc =>
      UpdateLineArticleFakeRpc();
}

class ArticlesService extends ArticlesServiceAbstract {
  static final count = 9;
  ArticlesService(
    GetLinesRpc getLinesRpc,
    AddAllLineArticlesRpc addAllLinesRpc,
    UpdateLineArticleRpc updateLineRpc,
    DeleteForeverLineArticleRpc deleteForeverLineRpc,
    UpdateArticleRpc updateArticleRpc,
    CreateArticleLineRpc createLineArticleRpc,
    CreateArticleRpc createArticleRpc,
    DeleteForeverArticleRpc deleteForeverArticleRpc,
    DeleteAllArticleLineRpc deleteAllLinesRpc,
  ) : super(
          getLinesRpc,
          addAllLinesRpc,
          updateLineRpc,
          deleteForeverLineRpc,
          updateArticleRpc,
          createLineArticleRpc,
          createArticleRpc,
          deleteForeverArticleRpc,
          deleteAllLinesRpc,
        );
}
