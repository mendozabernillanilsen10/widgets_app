import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final AppRauter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScren(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => ButthonScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => CardsScreen(),
    ),
  ],
);
