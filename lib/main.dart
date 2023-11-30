import 'package:flutter/material.dart';
import 'dart:math';

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
            title: const Center(
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

class MyDice extends StatefulWidget {
  const MyDice({super.key});

  @override
  State<MyDice> createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  int leftButton = 1;
  int rightButton = 1;

  @override
  Widget build(BuildContext context) {
    void generateRandomNumber() {
      setState(() {
        leftButton = Random().nextInt(5) + 1;
        rightButton = Random().nextInt(5) + 1;
      });
    }

    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: generateRandomNumber,
                  child: Image.asset('images/dice$leftButton.png'))),
          Expanded(
            child: TextButton(
                onPressed: generateRandomNumber,
                child: Image.asset('images/dice$rightButton.png')),
          )
        ],
      ),
    );
  }
}
