import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final iconData = isFavorite ? Icons.favorite : Icons.favorite_border;
        return ListTile(
          onTap: () {
            context.push('/recipe-detail');
          },
          title: const Text('Arroz con pollito'),
          subtitle: const Text('subtitulo'),
          trailing: IconButton(
            icon: Icon(iconData),
            onPressed: () {
              isFavorite = !isFavorite;
              setState(() {});
            },
          ),
        );
      },
    );
  }
}
