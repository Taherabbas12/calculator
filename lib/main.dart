import 'package:flutter/material.dart';

import 'calculator_neu_app.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator T&B',
      home:  CalculatueNeuApp(),
    );
  }
}
