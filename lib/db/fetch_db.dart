import 'package:flutter/material.dart';
import 'package:quiz_demo/db/PrdoductDao.dart';
import 'package:quiz_demo/db/database.dart';

class FetchDatabase {
  FetchDatabase._privateConstructor();

  static final FetchDatabase _instance = FetchDatabase._privateConstructor();


  static FetchDatabase get instance => _instance;

  Future<ProductDao> getDatabase() async {
    WidgetsFlutterBinding.ensureInitialized();

    final database =
        await $FloorAppDatabase.databaseBuilder('database.db').build();
    return database.productDao;
  }
}
