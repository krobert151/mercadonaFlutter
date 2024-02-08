import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercadona_app_molona/products/bloc/prod_cat_bloc.dart';
import 'package:mercadona_app_molona/products/repository/prodcat_repository.dart';
import 'package:mercadona_app_molona/products/repository/prodcat_repository_impl.dart';

class ListsProdCat extends StatefulWidget {
  final String id;
  const ListsProdCat({super.key, required this.id});

  @override
  State<ListsProdCat> createState() => _ListsProdCatState(id: id);
}

class _ListsProdCatState extends State<ListsProdCat> {
  final String id;
  late ProductoRepository prodCatRepository;

  _ListsProdCatState({required this.id});

  @override
  void initState() {
    super.initState();
    prodCatRepository = ProductoRepositoryImpl();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProdCatBloc(prodCatRepository)..add(ProdCatFetch(id)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Mercadona Wapo de Cojones"),
        ),
        body: _prodCatList(),
      ),
    );
  }

  _prodCatList() {
    return BlocBuilder<ProdCatBloc, ProdCatState>(
      builder: (BuildContext context, ProdCatState state) {
        if (state is ProdCatFetchSuccess) {
          return ListView.builder(
            itemCount: state.prodCadtegoryResponse.products?.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.prodCadtegoryResponse.toJson().toString()),
              );
            },
          );
        } else if (state is ProdCatFetchError) {
          return Text(state.errorMsg);
        }
        return Text('Manolo');
      },
    );
  }
}
