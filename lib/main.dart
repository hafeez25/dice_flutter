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

class MyDice extends StatefulWidget {
  const MyDice({super.key});

  @override
  State<MyDice> createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  int leftButton = 1;
  int rightButton = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(

                  onPressed: (){
                    print('Left Button Pressed!');
                    setState(() {
                      leftButton=2;
                    });
                  },
                  child: Image.asset('images/dice$leftButton.png'))),
          Expanded(
            child: TextButton(
                onPressed: (){
                  print('Right Button Pressed');
                  setState(() {
                    rightButton=5;
                  });
                },
                child: Image.asset('images/dice$rightButton.png')),
          )
        ],
      ),
    );
  }
}



