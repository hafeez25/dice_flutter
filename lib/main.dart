import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Defence Tracking',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        useMaterial3: true,
      ),
      home:Scaffold(
        backgroundColor: Colors.red,
          appBar: AppBar(title: Text('Dice App'),
          backgroundColor: Colors.green,),
          body:MyDice()),

    );
  }
}

class MyDice extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container();
  }

}

