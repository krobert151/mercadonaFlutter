import 'package:flutter/material.dart';
import 'package:mercadona_app_molona/categories/bloc/categories/category_bloc.dart';
import 'package:mercadona_app_molona/categories/bloc/categories/category_state.dart';
import 'package:mercadona_app_molona/categories/repository/categories_repository.dart';
import 'package:mercadona_app_molona/categories/repository/categories_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercadona_app_molona/categories/widget/category_item.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  late CategoryRepository categoryRepository;

  @override
  void initState() {
    super.initState();
    categoryRepository = CategoryRepositoryImpl();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CategoryBloc(categoryRepository)..add(CategoryFetchList()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Categorias'),
        ),
        body: _categoryList(),
      ),
    );
  }

  _categoryList() {
    return BlocBuilder<CategoryBloc, CategoryState>(
        builder: (BuildContext context, CategoryState state) {
      if (state is CategoryFetchSuccess) {
        return ListView.builder(
          itemCount: state.categoryList.length,
          itemBuilder: (context, index) {
            return ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CategoryItem(category: state.categoryList[index]),
                      ));
                },
                child: Text(state.categoryList[index].name!));
          },
        );
      } else if (state is CategoryFetchError) {
        return Text(state.errorMsg);
      }
      return Text('Manolo');
    });
  }
}
