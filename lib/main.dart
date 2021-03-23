import 'package:flutter/material.dart';

import 'dice_page.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo.shade800,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.indigo.shade900,
        ),
        body: DicePage(),
      ),
    );
  }
}
