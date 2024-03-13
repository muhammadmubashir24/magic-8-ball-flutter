import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            centerTitle: true,
            title: const Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: const BallPage(),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  void changeBallFace() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      // print('I got clicked = $ballNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeBallFace();
                // print('I got clicked');
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
