import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;
  final bool themeMode;

  AppTheme({this.selectedColor = 0, this.themeMode = true})
      : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
        assert(selectedColor <= colorList.length,
            'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: themeMode ? Brightness.light : Brightness.dark,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
