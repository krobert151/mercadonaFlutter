import 'package:mercadona_app_molona/home/models/home_page_response/home_page_response.dart';

abstract class HomeRepository {
  Future<List<Sections>> fetchHome();
}
