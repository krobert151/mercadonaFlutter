import 'package:bloc/bloc.dart';
import 'package:mercadona_app_molona/home/models/bajada_precio_reponse/bajada_precio_response.dart';
import 'package:mercadona_app_molona/home/repos/bajada_repository.dart';
import 'package:meta/meta.dart';

part 'bajada_event.dart';
part 'bajada_state.dart';

class BajadaBloc extends Bloc<BajadaEvent, BajadaState> {
  final BajadaRepository bajadaRepository;

  BajadaBloc(this.bajadaRepository) : super(BajadaInitial()) {
    on<BajadaFetch>(_onBajadaFetch);
  }

  void _onBajadaFetch(BajadaFetch event, Emitter<BajadaState> emit) async {
    try {
      final bajada = await bajadaRepository.fetchBajada();
      emit(BajadaFetchSuccess(bajada));
      return;
    } on Exception catch (e) {
      emit(BajadaFetchError(e.toString()));
    }
  }
}
