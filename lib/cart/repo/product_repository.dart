import 'package:dio/dio.dart';
import 'package:quiz_demo/model/Product.dart';

class ProductRepository {
  Dio? dio;
  String baseUrl = 'https://dummyjson.com/';

  Future<Product> getProductList() async {
    BaseOptions options = BaseOptions(baseUrl: baseUrl);
    dio = Dio(options);

    final response = await dio?.get('products');

    if (response?.statusCode == 200) {
      return Product.fromJson(response?.data);
    } else {
      throw Exception();
    }
  }
}
