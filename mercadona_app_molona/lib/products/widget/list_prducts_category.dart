import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercadona_app_molona/products/bloc/prod_cat_bloc.dart';
import 'package:mercadona_app_molona/products/repository/prodcat_repository.dart';
import 'package:mercadona_app_molona/products/repository/prodcat_repository_impl.dart';
import 'package:mercadona_app_molona/products/widget/horizontal_product_list.dart';

class ListsProdCat extends StatefulWidget {
  final String id;
  const ListsProdCat({super.key, required this.id});

  @override
  State<ListsProdCat> createState() => _ListsProdCatState();
}

class _ListsProdCatState extends State<ListsProdCat> {
  late ProductoRepository prodCatRepository;

  @override
  void initState() {
    super.initState();
    prodCatRepository = ProductoRepositoryImpl();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProdCatBloc(prodCatRepository)..add(ProdCatFetch(widget.id)),
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
          return SizedBox(
            height: double.infinity,
            child: ListView.builder(
              itemCount: state.prodCadtegoryResponse.categories!.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        state.prodCadtegoryResponse.categories![index].name!,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      HorizontalList(state
                          .prodCadtegoryResponse.categories![index].products)
                    ],
                  ),
                );
              },
            ),
          );
        } else if (state is ProdCatFetchError) {
          return Text(state.errorMsg);
        }
        return Text('Manolo');
      },
    );
  }
}
