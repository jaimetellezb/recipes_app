import 'package:go_router/go_router.dart';
import 'package:recipes_app/presentation/screens/recipes/recipe_detail_screen.dart';
import 'package:recipes_app/presentation/screens/recipes/register_screen.dart';
import 'package:recipes_app/presentation/screens/screens.dart';

/// app router
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/new-recipe',
      name: RegisterScreen.name,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/recipe-detail',
      name: RecipeDetailScreen.name,
      builder: (context, state) => const RecipeDetailScreen(),
    ),
  ],
);
