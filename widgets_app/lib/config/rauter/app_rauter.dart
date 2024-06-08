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
    GoRoute(
      path: '/animacion',
      name: AnimateScreen.name,
      builder: (context, state) => AnimateScreen(),
    ),
    GoRoute(
      path: '/ui_controlers',
      name: UI_control_scren.name,
      builder: (context, state) => UI_control_scren(),
    ),
    GoRoute(
      path: '/app_tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => AppTutorialScreen(),
    ),
    GoRoute(
      path: '/infinito_scroll',
      name: Infinite_Scroll_screen.name,
      builder: (context, state) => Infinite_Scroll_screen(),
    ),
  ],
);
