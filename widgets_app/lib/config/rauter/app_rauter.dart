import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final AppRauter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScren.name,
      builder: (context, state) => HomeScren(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButthonScreen.name,
      builder: (context, state) => ButthonScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => CardsScreen(),
    ),
  ],
);
