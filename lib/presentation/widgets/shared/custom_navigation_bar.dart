import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//

const iconList = <IconData>[
  Icons.home,
  Icons.favorite,
  Icons.brightness_6,
  Icons.brightness_7,
];

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
    icon: Icon(Icons.favorite_border),
    // icon: Badge(label: Text('10'), child: Icon(Icons.chat_bubble_outline)),
    label: 'Favoritas',
    selectedIcon: Icon(Icons.favorite),
    // selectedIcon: Badge(label: Text('10'), child: Icon(Icons.chat_bubble)),
  ),
  // const NavigationDestination(
  //   tooltip: '',
  //   icon: Icon(Icons.settings_outlined),
  //   // icon: Badge(label: Text('10'), child: Icon(Icons.chat_bubble_outline)),
  //   label: 'Ajustes',
  //   selectedIcon: Icon(Icons.settings),
  //   // selectedIcon: Badge(label: Text('10'), child: Icon(Icons.chat_bubble)),
  // ),
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
    final colors = Theme.of(context).colorScheme;
    return AnimatedBottomNavigationBar(
      shadow: const Shadow(
        color: Colors.black45,
      ),
      icons: iconList,
      activeColor: colors.inversePrimary,
      splashColor: colors.secondary,
      inactiveColor: colors.outline,
      backgroundColor: colors.background,
      activeIndex: currentIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.defaultEdge,
      hideAnimationCurve: Curves.easeInCirc,

      // leftCornerRadius: 10,
      iconSize: 25,
      // rightCornerRadius: 10,
      onTap: (int index) => _onItemTapped(context, index),
    );
  }
}
