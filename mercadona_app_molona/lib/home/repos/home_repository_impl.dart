import 'dart:convert';

import 'package:mercadona_app_molona/home/models/home_page_response/home_page_response.dart';
import 'package:mercadona_app_molona/home/repos/home_repository.dart';
import 'package:http/http.dart';

class HomeRepositoryImpl extends HomeRepository {
  final Client _httpClient = Client();

  @override
  Future<List<Sections>> fetchHome() async {
    final response = await _httpClient.get(Uri.parse(
        'https://tienda.mercadona.es/api/home/?lang=es&wh=svq1&postal_code=41001'));
    if (response.statusCode == 200) {
      return HomeResponse.fromJson(json.decode(response.body)).sections!;
    } else {
      throw Exception('Failed to load sections');
    }
  }
}
