import 'package:flutter/material.dart';
import 'package:recipes_app/config/router/app_router.dart';
import 'package:recipes_app/config/theme/app_theme.dart';

void main() {
  runApp(const RecipesApp());
}

/// initial app
class RecipesApp extends StatelessWidget {
  ///
  const RecipesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme().getTheme(),
    );
  }
}
