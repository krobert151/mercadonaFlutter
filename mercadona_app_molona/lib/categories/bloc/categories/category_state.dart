import 'package:flutter/material.dart';
import 'package:mercadona_app_molona/categories/model/categories_response.dart';

@immutable
sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}

final class CategoryFetchLoading extends CategoryState {}

final class CategoryFetchSuccess extends CategoryState {
  final List<Category> categoryList;

  CategoryFetchSuccess(this.categoryList);
}

final class CategoryFetchError extends CategoryState {
  final String errorMsg;
  CategoryFetchError(this.errorMsg);
}
