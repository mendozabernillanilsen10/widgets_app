import 'package:flutter/material.dart';

class Pogres_screnn_dart extends StatelessWidget {
  static const name = "Pogres_screnn_dart";

  const Pogres_screnn_dart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progres Indicador"),
      ),
      body: _progres_indicador(),
    );
  }
}

class _progres_indicador extends StatelessWidget {
  const _progres_indicador();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(children: [
        SizedBox(
          height: 30,
        ),
        Text("Circular Progres vasico"),
        CircularProgressIndicator(
          strokeWidth: 2,
          backgroundColor: Colors.black45,
        ),
        SizedBox(
          height: 30,
        ),
        Text("Circular Progres Controlado"),
        SizedBox(
          height: 10,
        ),
        _controlesProgressIndicador(),
        SizedBox(
          height: 10,
        ),
      ]),
    );
  }
}

class _controlesProgressIndicador extends StatelessWidget {
  const _controlesProgressIndicador();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value + 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progresValue = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progresValue,
                  strokeAlign: 2,
                  backgroundColor: Colors.black12,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: LinearProgressIndicator(
                  value: progresValue,
                )),
              ],
            ),
          );
        });
  }
}
