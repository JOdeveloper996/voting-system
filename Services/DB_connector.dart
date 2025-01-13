import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';



void ConnectDB() async{
WidgetsFlutterBinding.ensureInitialized();
final Future<Database>database = openDatabase(
  join(await getDatabasesPath(),'jordan_vote.db'),
  onCreate: (db, version){
    return db.execute(
      "CREATE TABLE Representative(Id INTEGER PRIMARY KEY, Name TEXT , Age INTEGER)"
    );
  },
  version: 1,
);
}