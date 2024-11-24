import 'package:flutter/material.dart';
import 'package:train_a/screens/home2.dart';

void main() {
  runApp(const DepiApp());
}

class DepiApp extends StatelessWidget {
  const DepiApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   useMaterial3: false,
      //   primarySwatch: Colors.blue,
      // ),
      home: MyHomePage(),
    );
  }
}
