import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButthonScreen extends StatelessWidget {
  static const String name = 'ButthonScreen';

  const ButthonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Butthon Screen  "),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('elevado btn ')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text("botones Elevados ")),
            FilledButton(onPressed: () {}, child: const Text(" Fill Butthon")),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.accessibility_new),
                label: const Text(" Fill icon")),
            OutlinedButton(
                onPressed: () {}, child: const Text("OutlinetButthon")),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.terminal),
                label: const Text(" Outline icon")),
            TextButton(onPressed: () {}, child: const Text(" Text Butthon")),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarms_outlined),
                label: const Text("Text Icons")),
            const CustonButthon(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_alarm_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_alarm_outlined),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}

class CustonButthon extends StatelessWidget {
  const CustonButthon({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5.0),
              child:
                  Text(" Hola Mundo", style: TextStyle(color: Colors.white))),
        ),
      ),
    );
  }
}
