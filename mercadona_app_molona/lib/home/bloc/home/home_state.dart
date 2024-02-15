part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeFetchSuccess extends HomeState {
  final List<Sections> homeSection;
  HomeFetchSuccess(this.homeSection);
}

final class HomeFetchError extends HomeState {
  final String errorMessage;
  HomeFetchError(this.errorMessage);
}
