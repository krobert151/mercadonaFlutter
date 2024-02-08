import 'dart:convert';

import 'package:http/http.dart';
import 'package:mercadona_app_molona/categories/model/categories_response.dart';
import 'package:mercadona_app_molona/categories/repository/categories_repository.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final Client _httpClient = Client();

  @override
  Future<List<Category>> fetchCategory() async {
    final response = await _httpClient
        .get(Uri.parse('https://tienda.mercadona.es/api/categories/'));

    if (response.statusCode == 200) {
      return CategoriesListResponse.fromJson(jsonDecode(response.body))
          .results!;
    } else {
      throw Exception("No va");
    }
  }
}
