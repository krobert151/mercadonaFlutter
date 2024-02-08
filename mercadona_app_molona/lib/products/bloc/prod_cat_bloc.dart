import 'package:bloc/bloc.dart';
import 'package:mercadona_app_molona/products/model/prod_cat.dart';
import 'package:mercadona_app_molona/products/repository/prodcat_repository.dart';
import 'package:meta/meta.dart';

part 'prod_cat_event.dart';
part 'prod_cat_state.dart';

class ProdCatBloc extends Bloc<ProdCatEvent, ProdCatState> {
  final ProductoRepository _productoRepository;

  ProdCatBloc(this._productoRepository) : super(ProdCatInitial()) {
    on<ProdCatFetch>(_onProdCatFetch);
  }

  void _onProdCatFetch(ProdCatFetch event, Emitter<ProdCatState> emit) async {
    try {
      final prodCat = await _productoRepository.fetchProdCat(event.id);
      emit(ProdCatFetchSuccess(prodCat));
    } catch (e) {
      emit(ProdCatFetchError(e.toString()));
    }
  }
}
