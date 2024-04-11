import 'package:flutter/material.dart';

class snack_bard_screen extends StatelessWidget {
  static const name = "snack_bard_screen";

  const snack_bard_screen({super.key});
  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snacback = SnackBar(
      content: const Text("Hola mundo "),
      action: SnackBarAction(
        label: "ok",
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snacback);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snap"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("MOSTRAR SNACL BARD"),
        icon: const Icon(Icons.remove_red_eye_rounded),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}
