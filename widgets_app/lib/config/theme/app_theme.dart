import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {
  final int SelectcColor;
  AppTheme({this.SelectcColor = 0})
      : assert(SelectcColor >= 0, 'color selecionado a cero '),
        assert(SelectcColor < colorList.length, 'El color no esta en el thema');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[SelectcColor],
      appBarTheme: const AppBarTheme(centerTitle: true));
}
