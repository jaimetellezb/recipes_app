// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:recipes_app/presentation/views/recipes/menus_view.dart';
import 'package:recipes_app/presentation/views/views.dart';
import 'package:recipes_app/presentation/widgets/shared/custom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({required this.pageIndex, super.key});

  static const String name = 'home-screen';
  final int pageIndex;

  final viewRoutes = const <Widget>[
    HomeView(),
    FavoritesView(),
    MenusView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
      bottomNavigationBar: CustomNavigationBar(currentIndex: pageIndex),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => context.push('/new-recipe'),
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
