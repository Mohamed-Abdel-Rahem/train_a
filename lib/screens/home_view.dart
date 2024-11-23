import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Color> colors = [
    Colors.pink,
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.orange,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) => Container(
                height: 300,
                color: colors[index],
              )),
    );
  }
}
