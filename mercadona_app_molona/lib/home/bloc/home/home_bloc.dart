import 'package:bloc/bloc.dart';
import 'package:mercadona_app_molona/home/models/home_page_response/home_page_response.dart';
import 'package:mercadona_app_molona/home/repos/home_repository.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc(this.homeRepository) : super(HomeInitial()) {
    on<HomeFetch>(_onHomeFetch);
  }

  void _onHomeFetch(HomeFetch event, Emitter<HomeState> emit) async {
    try {
      final home = await homeRepository.fetchHome();
      emit(HomeFetchSuccess(home));
      return;
    } on Exception catch (e) {
      emit(HomeFetchError(e.toString()));
    }
  }
}
