import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_http/model/dataweb.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DataWeb? dataweb;
  int valId=0;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async{
    //https://pokeapi.co/api/v2/pokemon/1
    valId++;
    final response = await Dio().get('https://pokeapi.co/api/v2/pokemon/$valId');
    //final response = await Dio().get('https://api.giphy.com/v1/gifs/search?api_key=CfQVYMHBy392CdKXEUs2WRQWWpwR486c&limit=10&q=ecuador$valId');
    dataweb = DataWeb.fromJson(response.data);
    //print(dataweb?['name'] ?? 'No info');
    setState(() { });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: Text('Info: $valId'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( dataweb?.name ?? 'No info' ),
            if(dataweb != null)
              Image.network(dataweb!.sprites.frontDefault),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next),
        onPressed: getData,
      ),
    );
  }
}