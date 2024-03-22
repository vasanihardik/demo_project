import 'package:equatable/equatable.dart';
import 'package:quiz_demo/db/model/ProductTable.dart';

class SearchState extends Equatable {
  const SearchState({this.isSearching = false, required this.products});

  final List<ProductsTable> products;
  final bool isSearching;

  SearchState copyWith(
      {required isSearching, required List<ProductsTable> products}) {
    return SearchState(isSearching: isSearching, products: products);
  }

  @override
  List<Object?> get props => [isSearching,products];
}
