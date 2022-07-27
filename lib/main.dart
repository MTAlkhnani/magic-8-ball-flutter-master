import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Ask Me Anything',
              style: TextStyle(fontSize: 25),
            ),
            backgroundColor: Colors.blue[800],
          ),
          backgroundColor: Colors.blue[300],
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  const MagicBall({Key key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent)),
          onPressed: () {
            print('The ball is clicked');
            setState(() {
              ballNum = Random().nextInt(5) + 1;
            });
          },
          child: Image(
            image: AssetImage('images/ball$ballNum.png'),
          ),
        ),
      ),
    );
  }
}
