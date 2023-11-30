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
      home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            title: Center(
                child: Text(
              'Dice',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
            backgroundColor: Colors.blue,
          ),
          body: MyDice()),
    );
  }
}

class MyDice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(

                onPressed: (){
                  print('Left Button Pressed!');
                },
                  child: Image.asset('images/dice1.png'))),
          Expanded(
            child: TextButton(
              onPressed: (){
                print('Right Button Pressed');
              },
                child: Image.asset('images/dice6.png')),
          )
        ],
      ),
    );
  }
}
