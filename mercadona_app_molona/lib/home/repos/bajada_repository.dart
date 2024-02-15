import 'package:mercadona_app_molona/home/models/bajada_precio_reponse/bajada_precio_response.dart';

abstract class BajadaRepository {
  Future<List<Items>?> fetchBajada();
}
