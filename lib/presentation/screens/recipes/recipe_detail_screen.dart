import 'package:flutter/material.dart';
import 'package:recipes_app/config/constants/messages.dart';

///
class RecipeDetailScreen extends StatelessWidget {
  ///
  const RecipeDetailScreen({super.key});

  ///
  static const name = 'recipe-detail-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Message.recipeDetailTitle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const _DetailView(),
    );
  }
}

class _DetailView extends StatelessWidget {
  const _DetailView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text('Título2'),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            color: Colors.amber,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Ingredientes'),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            color: Colors.green,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Preparación'),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
