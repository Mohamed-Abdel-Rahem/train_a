import 'package:flutter/material.dart';
import 'package:train_a/model/user.dart';
import 'package:train_a/screens/home_view.dart';

void main() {
  Employee e = Employee(
      name: 'Ahmed',
      position: 'eng',
      email: 'ahmed@gmail.com',
      phone: '123',
      picture: null);
  Employee e1 = Employee(
      name: 'Ahmed',
      position: 'eng',
      email: 'ahmed@gmail.com',
      phone: '123',
      picture: null);
  print(e == e1);
  print(e1.hashCode);
  print(e.hashCode);
  print(e.toString());
  runApp(const DepiApp());
}

class DepiApp extends StatelessWidget {
  const DepiApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
