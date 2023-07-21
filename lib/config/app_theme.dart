import 'package:flutter/material.dart';

class AppTheme{
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.deepPurple,
    appBarTheme: const AppBarTheme(
      elevation: 20
    )
  );
}