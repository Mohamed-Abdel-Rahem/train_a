import 'package:flutter/material.dart';
import 'package:train_a/screens/hom_view.dart';
import 'package:train_a/screens/post_app.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: PostApp(),
    );
  }
}
