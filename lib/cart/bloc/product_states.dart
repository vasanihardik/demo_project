import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:quiz_demo/model/Product.dart';

@immutable
abstract class ProductState extends Equatable {}

class ProductLoadingState extends ProductState {
  @override
  List<Object?> get props => [];
}

class ProductLoadedState extends ProductState {
  final Product product;

  ProductLoadedState(this.product);

  @override
  List<Object?> get props => [product];
}

class ProductErrorState extends ProductState {
  final String error;

  ProductErrorState(this.error);

  @override
  List<Object?> get props => [error];
}
