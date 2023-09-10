// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes_app/presentation/views/recipes/menus_view.dart';
import 'package:recipes_app/presentation/views/recipes/recipes_view.dart';
import 'package:recipes_app/presentation/views/views.dart';
import 'package:recipes_app/presentation/widgets/shared/custom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({required this.pageIndex, super.key});

  static const String name = 'home-screen';
  final int pageIndex;

  List<Widget> get viewRoutes => [
        const HomeView(),
        const RecipesView(),
        const MenusView(),
        const SettingView(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(currentIndex: pageIndex),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        elevation: 5,
        onPressed: () {
          context.push('/new-recipes');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
