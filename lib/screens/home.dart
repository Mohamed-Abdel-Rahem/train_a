import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Visibility(
            child: Image.network(
              'https://picsum.photos/200/300?random=2',
            ),
            visible: isChecked,
            maintainState: true,
            maintainSize: true,
            maintainAnimation: true,
          ),
          CheckboxListTile(
              title: Text("Show/Hide"),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              })
        ],
      ),
    );
  }
}
