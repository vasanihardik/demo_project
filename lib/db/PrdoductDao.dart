
import 'package:floor/floor.dart';
import 'package:quiz_demo/db/model/ProductTable.dart';

@dao
abstract class ProductDao{

  @Query('SELECT * FROM ProductsTable')
  Future<List<ProductsTable>> findAllPeople();

  @Query('SELECT name FROM ProductsTable')
  Stream<List<String>> findAllPeopleName();

  @Query('SELECT * FROM ProductsTable WHERE id = :id')
  Stream<ProductsTable?> findProductsById(int id);

  @insert
  Future<void> insertPerson(ProductsTable product);

}