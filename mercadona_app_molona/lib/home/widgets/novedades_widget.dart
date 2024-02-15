import 'package:flutter/material.dart';
import 'package:mercadona_app_molona/home/bloc/bajada/bajada_bloc.dart';
import 'package:mercadona_app_molona/home/repos/bajada_repository.dart';
import 'package:mercadona_app_molona/home/repos/bajada_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NovedadesListWidget extends StatefulWidget {
  const NovedadesListWidget({super.key});

  @override
  State<NovedadesListWidget> createState() => _NovedadesListWidgetState();
}

class _NovedadesListWidgetState extends State<NovedadesListWidget> {
  //late HomeRepository homeRepository;
  late BajadaRepository bajadaRepository;

  @override
  void initState() {
    super.initState();
    //homeRepository = HomeRepositoryImpl();
    bajadaRepository = BajadaRepositoryImpl();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BajadaBloc(bajadaRepository)..add(BajadaFetch()),
      child: Scaffold(
        appBar: AppBar(title: const Text('data')),
        body: _novedadesList(),
      ),
    );
  }

  /*Widget _novedadesList() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeFetchSuccess) {
          return ListView.builder(
            itemCount: state.homeSection.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                    state.homeSection[2].content!.items![index].displayName!),
              );
            },
          );
        } else if (state is HomeFetchError) {
          return Text(state.errorMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }*/

  Widget _novedadesList() {
    return BlocBuilder<BajadaBloc, BajadaState>(
      builder: (context, state) {
        if (state is BajadaFetchSuccess) {
          return ListView.builder(
            itemCount: state.bajadaItems?.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.bajadaItems![index].id!),
              );
            },
          );
        } else if (state is BajadaFetchError) {
          return Text(state.errorMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
