import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimateScreen extends StatefulWidget {
  static const name = "AnimateScreen";
  const AnimateScreen({super.key});
  @override
  State<AnimateScreen> createState() => _AnimateScreenState();
}

class _AnimateScreenState extends State<AnimateScreen> {
  double width = 500;
  double height = 500;
  Color color = Colors.blue;
  double borderRadius = 20.0;

  void chansesape() {
    final randow = Random();
    width = randow.nextInt(300) + 120;
    height = randow.nextInt(300) + 120;
    borderRadius = randow.nextInt(100) + 20;
    color = Color.fromRGBO(
        randow.nextInt(255), randow.nextInt(255), randow.nextInt(255), 1);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animaciones Con teines "),
      ),
      body: Center(
          child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        width: width <= 0 ? 0 : width,
        curve: Curves.elasticInOut,
        height: height <= 0 ? 0 : height,
        decoration: BoxDecoration(
            color: color,
            borderRadius:
                BorderRadius.circular(borderRadius <= 0 ? 0 : borderRadius)),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: chansesape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
