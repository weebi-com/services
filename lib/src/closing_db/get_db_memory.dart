import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_memory.dart';

Future<Database> getDatabaseTest() async {
  return await databaseFactoryMemory.openDatabase('yobi_test.db');
}
