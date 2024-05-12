import 'package:flutter/material.dart';
import 'package:widgets_app/config/rauter/app_rauter.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRauter,
      title: "flutter",
      debugShowCheckedModeBanner: false,
      theme: AppTheme(SelectcColor: 0).getTheme(),
    );
  }
}
