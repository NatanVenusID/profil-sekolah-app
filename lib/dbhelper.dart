import 'package:maps_schoolapp/model_news.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  static Database _database;

  final String tableNews = 'newsTable';
  final String columId = 'id';
  final String columnJudulBerita = 'judulberita';
  final String columnIsiBerita = 'isiberita';


  DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;
  Future<Database> get db async {
    if (_database != null) {
      return _database;
    }
    _database = await initDb();
    return _database;
  }

  initDb() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'news.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  Future<void> _onCreate(Database db, int version) async {
    var sql = "CREATE TABLE $tableNews($columId INTEGER PRIMARY KEY, "
        "$columnJudulBerita TEXT, "
        "$columnIsiBerita TEXT)";
    await db.execute(sql);
  }

//Save Pegawai
  Future<int> saveNews(ModelNews news) async {
    var dbClient = await db;
    var result = await dbClient.insert(tableNews, news.toMap());
    return result;
  }

//Get All Pegawai
  Future<List> getAllNews() async {
    var dbClient = await db;
    var result = await dbClient.query(tableNews, columns: [
      columId,
      columnJudulBerita,
      columnIsiBerita,

    ]);
    return result.toList();
  }

//Update Pegawai
  Future<int> updateNews(ModelNews news) async {
    var dbClient = await db;
    return await dbClient.update(tableNews, news.toMap(),
        where: "$columId = ?", whereArgs: [news.id]);
  }

//Delete Pegawai
  Future<int> deleteNews(int id) async {
    var dbClient = await db;
    return await dbClient
        .delete(tableNews, where: "$columId = ?", whereArgs: [id]);
  }
  

}
