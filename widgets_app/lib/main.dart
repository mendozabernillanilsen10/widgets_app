import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/rauter/app_rauter.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

void main() {
  runApp(const ProviderScope(
    child: MainApp(),
  ));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme apptheme = ref.watch(themeNotiqueProvaider);

    return MaterialApp.router(
      routerConfig: AppRauter,
      title: "hola mundo",
      debugShowCheckedModeBanner: false,
      theme: apptheme.getTheme(),
    );
  }
}
