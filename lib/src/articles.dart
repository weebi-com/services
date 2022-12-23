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

class ArticlesService {
  static final count = [
    GetLinesRpc,
    AddAllLineArticlesRpc,
    UpdateLineArticleRpc,
    DeleteForeverLineArticleRpc,
    UpdateArticleRpc,
    CreateArticleLineRpc,
    CreateArticleRpc,
    DeleteForeverArticleRpc,
    DeleteAllArticleLinesRpc,
  ].length;
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
