import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:mercadona_app_molona/categories/bloc/categories/category_state.dart';
import 'package:mercadona_app_molona/categories/repository/categories_repository.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository _categoryRepository;

  CategoryBloc(this._categoryRepository) : super(CategoryInitial()) {
    on<CategoryFetchList>(_onMovieFetchList);
  }

  void _onMovieFetchList(
      CategoryFetchList event, Emitter<CategoryState> emit) async {
    try {
      final categoryList = await _categoryRepository.fetchCategory();
      emit(CategoryFetchSuccess(categoryList));
    } catch (e) {
      emit(CategoryFetchError(e.toString()));
    }
  }
}
