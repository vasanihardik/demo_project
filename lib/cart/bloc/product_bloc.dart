import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_demo/cart/bloc/product_event.dart';
import 'package:quiz_demo/cart/bloc/product_states.dart';
import 'package:quiz_demo/cart/repo/product_repository.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {

  final ProductRepository _productRepository;


  ProductBloc(this._productRepository) : super(ProductLoadingState()) {
    on<LoadProductEvent>((event, emit) async {
      emit(ProductLoadingState());
      try {
        final users = await _productRepository.getProductList();
        print(users);
        emit(ProductLoadedState(users));
      } catch (e) {
        emit(ProductErrorState(e.toString()));
      }
    });
  }
}
