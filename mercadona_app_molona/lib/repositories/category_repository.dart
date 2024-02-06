import 'package:mercadona_app_molona/categories_list_respose/categories_list_respose.dart';

abstract class CategoryRepository {
  Future<CategoriesListRespose> fetchListCategories();
}
