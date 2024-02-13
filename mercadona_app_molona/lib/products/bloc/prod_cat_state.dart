part of 'prod_cat_bloc.dart';

@immutable
sealed class ProdCatState {}

final class ProdCatInitial extends ProdCatState {}

final class ProdCatFetchLoading extends ProdCatState {}

final class ProdCatFetchSuccess extends ProdCatState {
  final ProdCadtegoryResponse prodCadtegoryResponse;
  ProdCatFetchSuccess(this.prodCadtegoryResponse);
}

final class ProdCatFetchError extends ProdCatState {
  final String errorMsg;
  ProdCatFetchError(this.errorMsg);
}
