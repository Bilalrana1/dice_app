import 'package:dice_app/screens/dicepage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dice App"),
        backgroundColor: Colors.red,
      ),
      body: const Dicepage(),
    );
  }
}
