import 'package:mercadona_app_molona/categories/model/categories_response.dart';

abstract class CategoryRepository {
  Future<List<Category>> fetchCategory();
}
