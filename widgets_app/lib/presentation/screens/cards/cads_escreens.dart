import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'CardScreen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Cards "),
      ),
      body: Placeholder(),
    );
  }
}
