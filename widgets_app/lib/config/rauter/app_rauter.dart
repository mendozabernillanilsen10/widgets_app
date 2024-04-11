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
    GoRoute(
      path: '/pogresindicador',
      name: Pogres_screnn_dart.name,
      builder: (context, state) => Pogres_screnn_dart(),
    ),
    GoRoute(
      path: '/snack',
      name: snack_bard_screen.name,
      builder: (context, state) => snack_bard_screen(),
    ),
  ],
);
