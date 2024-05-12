import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class snack_bard_screen extends StatelessWidget {
  static const name = "snack_bard_screen";
  const snack_bard_screen({super.key});
  // ignore: empty_constructor_bodies
  void showcustonSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackMessenger = SnackBar(
      content: const Text("Hola "),
      action: SnackBarAction(label: "ok", onPressed: () {}),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackMessenger);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text("Doalogo Personalizado"),
              content: const Text("loren Insup  "),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text("Cancelar")),
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text("Aceptar"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbars y Dialog "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(
                      context: context,
                      children: [const Text(" culpa es mia  a este dialog ")]);
                },
                child: const Text("Licencias usadas")),
            FilledButton.tonal(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text("Licencias usadas"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Mostrar snack bar "),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showcustonSnackbar(context);
        },
      ),
    );
  }
}
