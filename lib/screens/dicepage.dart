// ignore_for_file: deprecated_member_use

import 'dart:math';
import 'package:flutter/material.dart';

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  var leftdicenumber = 1;
  var rightdicenumber = 1;
  void dicechangeface() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                dicechangeface();
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                dicechangeface();
              },
              child: Image.asset('images/dice$rightdicenumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
