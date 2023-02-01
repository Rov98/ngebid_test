import 'package:ngebid_test/constant.dart';
import 'package:sqflite/sqflite.dart' as sqlite;
import 'package:path/path.dart' as path;

class DB_Helper {
  static Future<sqlite.Database> getDB() async {
    const sqlCMD = '''
  CREATE TABLE $tableName(id INTEGER PRIMARY KEY, title TEXT, price INT, image TEXT, weight DOUBLE)
''';
    final dbPath = await sqlite.getDatabasesPath();

    //create db, if exist overWrite
    return sqlite.openDatabase(
      path.join(dbPath, dbName),
      onCreate: (db, version) => db.execute(sqlCMD),
      version: 1,
    );
  }

  static Future<void> insert(
      int id, String title, image, int price, double weight) async {
    final db = await DB_Helper.getDB();
    db.insert(tableName, {
      'id': id,
      'title': title,
      'price': price,
      'image': image,
      'weight': weight,
    });
  }

  static Future<List<Map<String, Object?>>> clearTable() async {
    final db = await DB_Helper.getDB();
    return await db.rawQuery('DELETE FROM $tableName');
  }

  static Future<Future<List<Map<String, Object?>>>> fetchData() async {
    final db = await DB_Helper.getDB();
    return db.query(tableName);
  }
}
