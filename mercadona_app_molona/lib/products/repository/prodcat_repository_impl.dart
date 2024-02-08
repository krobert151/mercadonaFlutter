import 'dart:convert';

import 'package:http/http.dart';
import 'package:mercadona_app_molona/products/model/prod_cat.dart';
import 'package:mercadona_app_molona/products/repository/prodcat_repository.dart';

class ProductoRepositoryImpl extends ProductoRepository {
  final Client _httpClient = Client();

  @override
  Future<ProdCadtegoryResponse> fetchProdCat(String num) async {
    final response = await _httpClient
        .get(Uri.parse('https://tienda.mercadona.es/api/categories/' + num));

    if (response.statusCode == 200) {
      return ProdCadtegoryResponse.fromJson(
          jsonDecode(utf8.decode(response.bodyBytes)));
    } else {
      throw Exception("No va");
    }
  }
}
