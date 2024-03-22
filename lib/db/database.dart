// database.dart

import 'package:floor/floor.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:quiz_demo/db/PrdoductDao.dart';
import 'package:quiz_demo/db/model/ProductTable.dart';
part 'database.g.dart';

@Database(version: 1, entities: [ProductsTable])
abstract class AppDatabase extends FloorDatabase {
  ProductDao get productDao;
}