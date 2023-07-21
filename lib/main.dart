import 'package:flutter/material.dart';
import 'package:flutter_http/presentation/botonera.dart';
import 'package:flutter_http/presentation/screens/home_screen.dart';

import 'config/app_theme.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      //home: const HomeScreen(),
      home: const Botonera(),
    );
  }
}