part of 'bajada_bloc.dart';

@immutable
sealed class BajadaState {}

final class BajadaInitial extends BajadaState {}

final class BajadaFetchSuccess extends BajadaState {
  final List<Items>? bajadaItems;
  BajadaFetchSuccess(this.bajadaItems);
}

final class BajadaFetchError extends BajadaState {
  final String errorMessage;
  BajadaFetchError(this.errorMessage);
}
