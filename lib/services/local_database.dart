  import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper extends ChangeNotifier{


  static final _dbName    = 'myDB.db';
  static final _dbVersion = 1;
  static final _tableName = 'vehicle';



  static final _columnId    = '_id';
  static final _columnVehicleNumber = 'vehicleNumber';
  static final _columnModel  = 'model';
  static final _columnMaker = 'maker';
  static final _columnFuel= 'fuel';
  static final _columnTransmission = 'transmission';
  
  static Database _database;
  Future<Database> get database async {
    if(_database != null) return _database;

    _database = await _initiateDatabase();
    print(_database);
    return _database;
  }

  _initiateDatabase() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _dbName);
    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async{
    await db.execute(
      '''
      CREATE TABLE $_tableName(
        $_columnId INTEGER PRIMARY KEY,
        $_columnVehicleNumber TEXT NOT NULL,
        $_columnMaker TEXT NOT NULL,
        $_columnModel Text NOT NULL,
        $_columnFuel Text NOT NULL,
        $_columnTransmission Text NOT NULL
      )

      '''
    );
  }

  Future<void> insert(Map<String, dynamic> row) async{
    Database db = await database;
    await db.insert(_tableName, row);
    notifyListeners();
  }

  Future<List<Map<String, dynamic>>> queryAll() async{
    Database db = await database;
    return await db.query(_tableName);
  }

  Future<void> update(Map<String, dynamic> row) async{
    Database db = await database;
    int id = row[_columnId];
    await db.update(_tableName, row, where: '$_columnId = ?', whereArgs: [id]);
    notifyListeners();
  }

  Future<void> delete(int id) async{
    Database db = await database;
    await db.delete(_tableName, where: '$_columnId = ?', whereArgs: [id]);
    notifyListeners();
  }


}