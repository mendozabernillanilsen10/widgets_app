import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

const cards = <Map<String, dynamic>>[
  {'elevacion': 0.0, 'label': 'Elevacion 0'},
  {'elevacion': 1.0, 'label': 'Elevacion 0'},
  {'elevacion': 2.0, 'label': 'Elevacion 0'},
  {'elevacion': 3.0, 'label': 'Elevacion 0'},
  {'elevacion': 4.0, 'label': 'Elevacion 0'},
  {'elevacion': 5.0, 'label': 'Elevacion 0'},
];

class CardsScreen extends StatelessWidget {
  static const String name = 'CardScreen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Cards "),
      ),
      body: const _CradsView(),
    );
  }
}

class _CradsView extends StatelessWidget {
  const _CradsView();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ...cards.map(
          (card) =>
              _CardType(elevation: card['elevacion'], label: card['label']),
        ),
        ...cards.map(
          (card) =>
              _CardType1(elevation: card['elevacion'], label: card['label']),
        ),
        ...cards.map(
          (card) =>
              _CardType2(elevation: card['elevacion'], label: card['label']),
        ),
        ...cards.map(
          (card) =>
              _CardType3(elevation: card['elevacion'], label: card['label']),
        ),
        const SizedBox(height: 50),
      ]),
    );
  }
}

class _CardType extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType({required this.label, required this.elevation});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(children: [
          Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              )),
          Align(alignment: Alignment.bottomLeft, child: Text(label)),
          const SizedBox(height: 50),
        ]),
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType1({required this.label, required this.elevation});
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          side: BorderSide(color: colors.outline)),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(children: [
          Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              )),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text('$label - outline'),
          ),
        ]),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType2({required this.label, required this.elevation});
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.surfaceVariant,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(children: [
          Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              )),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text('$label - filled'),
          ),
        ]),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;
  const _CardType3({required this.label, required this.elevation});
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.hardEdge,
      color: colors.surfaceVariant,
      elevation: elevation,
      child: Stack(children: [
        Image.network(
          'https://picsum.photos/id/${elevation.toInt()}/600/350',
          height: 350,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(20))),
            child: IconButton(
              icon: const Icon(Icons.more_vert_outlined),
              onPressed: () {},
            ),
          ),
        ),
      ]),
    );
  }
}
