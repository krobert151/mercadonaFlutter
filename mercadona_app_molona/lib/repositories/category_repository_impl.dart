import 'dart:convert';

import 'package:mercadona_app_molona/categories_list_respose/categories_list_respose.dart';
import 'package:mercadona_app_molona/repositories/category_repository.dart';
import 'package:http/http.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final Client _client = Client();

  @override
  Future<CategoriesListRespose> fetchListCategories() async {
    final response = await _client
        .get(Uri.parse('https://tienda.mercadona.es/api/categories/'));
    if (response.statusCode == 200) {
      return CategoriesListRespose.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Fail to load pokemons');
    }
  }
}
