import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dice game')
      ),
      body: Center(
        child: Text('dice game'),
      ),
    );
  }
}

