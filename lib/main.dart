import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.indigo,
          ),
          body: EightBallPage(),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );

class EightBallPage extends StatefulWidget {
  const EightBallPage({Key key}) : super(key: key);

  @override
  State<EightBallPage> createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {

  int ballNumber = 1;
  void changeEightBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeEightBall();
                });
              },
              child: Image.asset('images/ball$ballNumber.png')
            ),
          ),
        ],
      ),
    );
  }
}


