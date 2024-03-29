import 'package:go_router/go_router.dart';
import 'package:recipes_app/presentation/screens/menu/register_menu_screen.dart';
import 'package:recipes_app/presentation/screens/recipes/recipe_detail_screen.dart';
import 'package:recipes_app/presentation/screens/recipes/register_screen.dart';
import 'package:recipes_app/presentation/screens/screens.dart';

/// app router
final appRouter = GoRouter(
  initialLocation: '/home/0',
  routes: [
    GoRoute(
      path: '/home/:page',
      name: HomeScreen.name,
      builder: (context, state) {
        final pageIndex = state.pathParameters['page'] ?? '0';
        return HomeScreen(
          pageIndex: int.parse(pageIndex),
        );
      },
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
    GoRoute(
      path: '/menu/:day',
      name: RegisterMenuScreen.name,
      builder: (context, state) {
        return RegisterMenuScreen(
          day: state.pathParameters['day']!,
        );
      },
    ),
  ],
);
