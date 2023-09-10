// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuItem {
  MenuItem({required this.title, required this.route, this.icon});
  final String title;
  final String route;
  final IconData? icon;
}

final menuItems = <MenuItem>[
  MenuItem(title: 'Lunes', route: '/monday'),
  MenuItem(title: 'Martes', route: '/tuesday'),
  MenuItem(title: 'Miércoles', route: '/wednesday'),

  MenuItem(title: 'Jueves', route: '/thursday'),
  MenuItem(title: 'Viernes', route: '/friday'),
  MenuItem(title: 'Sábado', route: '/saturday'),
  MenuItem(title: 'Domingo', route: '/sunday'),

  // Ads
  // MenuItem('Ad Full', Icons.ad_units_rounded, '/ad-fullscreen'),
  // MenuItem('Ad Reward', Icons.fort_sharp, '/ad-rewarded'),
];

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SliverGrid.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      childAspectRatio: width / (height / 4),
      children: menuItems
          .map(
            (item) => HomeMenuItem(
              title: item.title,
              route: item.route,
              bgColors: [colors.primaryContainer, colors.primary],
            ),
          )
          .toList(),
    );
  }
}

class HomeMenuItem extends StatelessWidget {
  const HomeMenuItem({
    required this.title,
    required this.route,
    this.icon,
    super.key,
    this.bgColors = const [Colors.lightBlue, Colors.blue],
  });

  final String title;
  final String route;
  final IconData? icon;
  final List<Color> bgColors;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () => context.go('/menu$route'),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: bgColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(icon, color: Colors.white, size: 40),
            // const SizedBox(height: 10),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: textStyle.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
