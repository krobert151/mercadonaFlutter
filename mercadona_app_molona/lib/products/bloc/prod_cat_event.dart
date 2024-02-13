part of 'prod_cat_bloc.dart';

@immutable
sealed class ProdCatEvent {}

class ProdCatFetch extends ProdCatEvent {
  final String id;
  ProdCatFetch(this.id);
}
