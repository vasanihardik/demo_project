import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class SearchEvent extends Equatable{

  const SearchEvent();
}

class LoadSearchEvent extends SearchEvent{

  final String keyword;

  const LoadSearchEvent(this.keyword);

  @override
  List<Object?> get props => [];

}
