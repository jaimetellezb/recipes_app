import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// custom navigation bar

List<Widget> _barWithBadgeDestinations = [
  const NavigationDestination(
    tooltip: '',
    icon: Icon(Icons.home_outlined),
    // icon: Badge.count(count: 1000, child: const Icon(Icons.mail_outlined)),
    label: 'Inicio',
    selectedIcon: Icon(Icons.home),
    // selectedIcon: Badge.count(count: 1000, child: const Icon(Icons.mail)),
  ),
  const NavigationDestination(
    tooltip: '',
    icon: Icon(Icons.fastfood_outlined),
    // icon: Badge(label: Text('10'), child: Icon(Icons.chat_bubble_outline)),
    label: 'Recetas',
    selectedIcon: Icon(Icons.fastfood),
    // selectedIcon: Badge(label: Text('10'), child: Icon(Icons.chat_bubble)),
  ),
  const NavigationDestination(
    tooltip: '',
    icon: Icon(Icons.restaurant_menu_outlined),
    // icon: Badge(label: Text('10'), child: Icon(Icons.chat_bubble_outline)),
    label: 'Menús',
    selectedIcon: Icon(Icons.restaurant),
    // selectedIcon: Badge(label: Text('10'), child: Icon(Icons.chat_bubble)),
  ),
  const NavigationDestination(
    tooltip: '',
    icon: Icon(Icons.settings_outlined),
    // icon: Badge(label: Text('10'), child: Icon(Icons.chat_bubble_outline)),
    label: 'Ajustes',
    selectedIcon: Icon(Icons.settings),
    // selectedIcon: Badge(label: Text('10'), child: Icon(Icons.chat_bubble)),
  ),
];

///
class CustomNavigationBar extends StatelessWidget {
  ///
  const CustomNavigationBar({required this.currentIndex, super.key});

  ///
  final int currentIndex;

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/home/0');
      case 1:
        context.go('/home/1');
      case 2:
        context.go('/home/2');
      case 3:
        context.go('/home/3');
    }
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) => _onItemTapped(context, index),
      selectedIndex: currentIndex,
      destinations: _barWithBadgeDestinations,
    );
  }
}
