import 'package:flutter/material.dart';
import 'package:recipes_app/presentation/widgets/widgets.dart';

/// Widget que muestra toda la vista de Inicio
class HomeView extends StatefulWidget {
  /// Constructor
  const HomeView({super.key});

  @override
  State<HomeView> createState() => HomeViewState();
}

///
class HomeViewState extends State<HomeView> {
  final bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    //* CustomScrollView
    // Utiliza slivers que se encargan de manejar el scroll de la pantalla
    // hay varios tipos de slivers
    return CustomScrollView(
      slivers: [
        //* SliverAppBar
        // se encarga de manejar la parte superior de la pantalla
        const SliverAppBar(
          // floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAppBar(),
          ),
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const Column(
                children: [
                  WeeklyMenuSlideShow(),
                  RecipeHorizontalListView(
                    title: 'Sopas',
                    subTitle: 'Este mes',
                  ),
                  RecipeHorizontalListView(
                    title: 'Postres',
                    subTitle: 'Este mes',
                  ),
                ],
              );
            },
            //* Agregamos 1 para que solo nos muestre el que necesitamos
            //* por defecto es infinito
            childCount: 1,
          ),
        ),
      ],
    );

    // return ListView.builder(
    //   itemBuilder: (context, index) {
    //     final iconData = _isFavorite ? Icons.favorite : Icons.favorite_border;
    //     return ListTile(
    //       onTap: () {
    //         context.push('/recipe-detail');
    //       },
    //       title: const Text('Arroz con pollito'),
    //       subtitle: const Text('subtitulo'),
    //       trailing: IconButton(
    //         icon: Icon(iconData),
    //         onPressed: () {
    //           _isFavorite = !_isFavorite;
    //           setState(() {});
    //         },
    //       ),
    //     );
    //   },
    // );
  }
}
