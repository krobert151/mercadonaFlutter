import 'package:mercadona_app_molona/products/model/prod_cat.dart';

abstract class ProductoRepository {
  Future<ProdCadtegoryResponse> fetchProdCat(String num);
}
