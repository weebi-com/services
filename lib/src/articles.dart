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

abstract class ArticlesServiceAbstract {}

class ArticlesServiceNoSembast extends ArticlesServiceAbstract {
  final GetLinesFakeRpc getLinesFakeRpc;
  final AddAllLineArticlesFakeRpc addAllLinesFakeRpc;
  final UpdateLineArticleFakeRpc updateLineFakeRpc;
  final DeleteForeverLineArticleFakeRpc deleteForeverLineFakeRpc;
  final UpdateArticleFakeRpc updateArticleFakeRpc;
  final CreateArticleLineFakeRpc createLineArticleFakeRpc;
  final CreateArticleFakeRpc createArticleFakeRpc;
  final DeleteForeverArticleFakeRpc deleteForeverArticleFakeRpc;
  final DeleteAllArticleLinesFakeRpc deleteAllLinesFakeRpc;
  static final count = 9;

  ArticlesServiceNoSembast(
      this.getLinesFakeRpc,
      this.addAllLinesFakeRpc,
      this.updateLineFakeRpc,
      this.deleteForeverLineFakeRpc,
      this.updateArticleFakeRpc,
      this.createLineArticleFakeRpc,
      this.createArticleFakeRpc,
      this.deleteForeverArticleFakeRpc,
      this.deleteAllLinesFakeRpc);
}

class ArticlesService extends ArticlesServiceAbstract {
  static final count = 9;
  final GetLinesRpc getLinesRpc;
  final AddAllLineArticlesRpc addAllLinesRpc;
  final UpdateLineArticleRpc updateLineRpc;
  final DeleteForeverLineArticleRpc deleteForeverLineRpc;
  final UpdateArticleRpc updateArticleRpc;
  final CreateArticleLineRpc createLineArticleRpc;
  final CreateArticleRpc createArticleRpc;
  final DeleteForeverArticleRpc deleteForeverArticleRpc;
  final DeleteAllArticleLinesRpc deleteAllLinesRpc;

  ArticlesService(
      this.getLinesRpc,
      this.addAllLinesRpc,
      this.updateLineRpc,
      this.deleteForeverLineRpc,
      this.updateArticleRpc,
      this.createLineArticleRpc,
      this.createArticleRpc,
      this.deleteForeverArticleRpc,
      this.deleteAllLinesRpc);
}
