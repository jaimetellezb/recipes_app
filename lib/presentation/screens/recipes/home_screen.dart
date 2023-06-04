// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes_app/config/constants/messages.dart';
import 'package:recipes_app/presentation/views/views.dart';
import 'package:recipes_app/presentation/widgets/custom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({required this.pageIndex, super.key});

  static const String name = 'home-screen';
  final int pageIndex;

  final viewRoutes = const <Widget>[HomeView(), FavoritesView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Message.homeTitle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      bottomNavigationBar: CustomNavigationBar(currentIndex: pageIndex),
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/new-recipe'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
