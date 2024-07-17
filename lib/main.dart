import 'package:flutter/material.dart';
import 'package:train_a/screens/hom_view.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomView(),
    );
  }
}
