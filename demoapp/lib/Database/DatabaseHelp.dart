/*
three plugins which is important for sqlflite you have to 
install it every time when you create a new project
flutter pub add sqflite
flutter pub add path
flutter pub add path_provider
*/
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqlite_api.dart';

class DatabaseHelper {
  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'Sqflite.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }

  static Future<void> createTables(sql.Database database) async {
    await database.execute("""
      CREATE TABLE items(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT,
        description TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
""");
  }

  //id : the id of a item
  //title and description : name and description of activity
  //created_at: the time that the item was craeted. It will be automatically
  //handled by SQLite
  //create new item
  static Future<int> createItem(String? title, String? description) async {
    final db = await DatabaseHelper.db();
    final data = {'title': title, 'description': description};
    final id = await db.insert('items', data,
        conflictAlgorithm: ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await DatabaseHelper.db();
    return db.query('items', orderBy: "id");
  }

  static Future<int> updateItem(
      int id, String title, String? description) async {
    final db = await DatabaseHelper.db();

    final data = {
      'title': title,
      'description': description,
      'createAt': DateTime.now().toString()
    };
    final result =
        await db.update('items', data, where: "id=?", whereArgs: [id]);
    return result;
  }

  //delete
  static Future<void> deleteItem(int id) async {
    final db = await DatabaseHelper.db();
    try {
      await db.delete("items", where: "id=?", whereArgs: [id]);
    } catch (err) {
      debugPrint(
          "Something Went Wrong here at the time of deleteing your task :$err");
    }
  }
}
