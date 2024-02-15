import 'dart:convert';

import 'package:http/http.dart';
import 'package:mercadona_app_molona/home/models/bajada_precio_reponse/bajada_precio_response.dart';
import 'package:mercadona_app_molona/home/repos/bajada_repository.dart';

class BajadaRepositoryImpl extends BajadaRepository {
  final Client _httpClient = Client();

  @override
  Future<List<Items>?> fetchBajada() async {
    final response = await _httpClient.get(Uri.parse(
        'https://tienda.mercadona.es/api/home/price-drops/?lang=es&wh=svq1'));
    if (response.statusCode == 200) {
      return BajadaPrecioResponse.fromJson(json.decode(response.body)).items;
    } else {
      throw Exception('Failed to load sections');
    }
  }
}
