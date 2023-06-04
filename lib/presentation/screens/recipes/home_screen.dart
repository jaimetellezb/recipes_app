// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes_app/config/constants/messages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String name = 'home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const _HomeView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/new-recipe'),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _HomeView extends StatefulWidget {
  const _HomeView();

  @override
  State<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Message.homeTitle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              context.push('/recipe-detail');
            },
            title: const Text('Arroz con pollito'),
            subtitle: const Text('subtitulo'),
            trailing: const Icon(Icons.accessible_forward_outlined),
          );
        },
      ),
    );
  }
}
