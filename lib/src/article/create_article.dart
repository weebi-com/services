// Package imports:
import 'package:collection/collection.dart';
import 'package:sembast/sembast.dart';

// Project imports:
import 'package:models_weebi/weebi_models.dart' show LineOfArticles;
import 'package:models_weebi/base.dart' show ArticleAbstract, EndpointBase;
import 'package:models_weebi/db.dart';

class CreateArticleRpc<A extends ArticleAbstract>
    implements EndpointBase<A, A> {
  final DbArticles _database;

  const CreateArticleRpc(this._database);

  @override
  Future<A> request(A data, {bool isTest = false}) async {
    final dbStore = intMapStoreFactory.store('articles');
    final recordSnapshot = await dbStore.find(_database.db);
    if (recordSnapshot.isNotEmpty) {
      final lineKey = await dbStore.findKey(_database.db,
          finder: Finder(filter: Filter.equals('id', data.lineId)));
      if (lineKey != null) {
        final lineSnap = await dbStore.record(lineKey).get(_database.db);
        final line = LineOfArticles.fromMap(lineSnap!);

        line.articles.add(data);
        final updatedLineMap =
            await dbStore.record(lineKey).update(_database.db, line!.toMap());
        if (isTest) {
          final d = LineOfArticles.fromMap(updatedLineMap!)
              .articles
              .firstWhereOrNull((element) =>
                  element.lineId == data.lineId && element.id == data.id);
          // final dd = d is Article ? d : d as ArticleBasket;
          return d as A;
        } else {
          return data;
        }
      }
    } else {
      throw 'empty';
    }
    throw 'empty';
  }
}
