import 'package:flutter/material.dart';

class UI_control_scren extends StatelessWidget {
  static const name = "UI_control_scren";
  const UI_control_scren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" container "),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

class _UIControlsViewState extends State<_UIControlsView> {
  bool iSDeveloper = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
            title: const Text("Deverloper Modo"),
            subtitle: const Text("controles adicionales "),
            value: iSDeveloper,
            onChanged: (value) => setState(() {
                  if (iSDeveloper) {
                    iSDeveloper = false;
                  } else {
                    iSDeveloper = true;
                  }
                }))
      ],
    );
  }
}
