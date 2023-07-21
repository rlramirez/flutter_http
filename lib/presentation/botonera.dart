import 'package:flutter/material.dart';
import 'package:flutter_http/presentation/screens/home_screen.dart';
import 'package:flutter_http/presentation/screens/users_screens.dart';

class Botonera extends StatelessWidget {
  const Botonera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botonera Principal'),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            ),
            ElevatedButton(
              onPressed:(){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
              }, 
              child: const Text("HTTP with DIO")
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 00, vertical: 20),),
            ElevatedButton(
              onPressed:(){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const UserScreen()));
              }, 
              child: const Text("API  HTTP")
            ),
          ],
        ),
      ),
    );
  }
}