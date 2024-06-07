import 'package:flutter/material.dart';

class UI_control_scren extends StatelessWidget {
  static const name = "UI_control_scren";
  const UI_control_scren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
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

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool iSDeveloper = true;
  Transportation selelectTranportacion = Transportation.car;

  bool isdesayuno = false;
  bool isalmuerzo = false;
  bool iscena = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          title: const Text("Developer Mode"),
          subtitle: const Text("Additional controls"),
          value: iSDeveloper,
          onChanged: (value) => setState(() {
            iSDeveloper = !iSDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Transportation Vehicle'),
          subtitle: Text('Description'),
          children: [
            RadioListTile(
              title: const Text("Car Engine"),
              subtitle: const Text("Travel by car engine"),
              value: Transportation.car,
              groupValue: selelectTranportacion,
              onChanged: (value) => setState(() {
                selelectTranportacion = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text("Plane Engine"),
              subtitle: const Text("Travel by plane engine"),
              value: Transportation.plane,
              groupValue: selelectTranportacion,
              onChanged: (value) => setState(() {
                selelectTranportacion = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text("Boat Engine"),
              subtitle: const Text("Travel by boat engine"),
              value: Transportation.boat,
              groupValue: selelectTranportacion,
              onChanged: (value) => setState(() {
                selelectTranportacion = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text("Submarine Engine"),
              subtitle: const Text("Travel by submarine engine"),
              value: Transportation.submarine,
              groupValue: selelectTranportacion,
              onChanged: (value) => setState(() {
                selelectTranportacion = Transportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('quiere Desayuno'),
          value: isdesayuno,
          onChanged: (value) {
            setState(() {
              isdesayuno = !isdesayuno;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('quiere Almuerzo'),
          value: isalmuerzo,
          onChanged: (value) {
            setState(() {
              isalmuerzo = !isalmuerzo;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('quiere Cena'),
          value: iscena,
          onChanged: (value) {
            setState(() {
              iscena = !iscena;
            });
          },
        ),
      ],
    );
  }
}
