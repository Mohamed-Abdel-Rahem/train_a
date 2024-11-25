import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedpage extends StatefulWidget {
  const Sharedpage({super.key});

  @override
  State<Sharedpage> createState() => _SharedpageState();
}

class _SharedpageState extends State<Sharedpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SharedPrefrences'),
        actions: [],
      ),
      body: ListView(
        children: [
          MaterialButton(
            onPressed: () async {
              SharedPreferences pref = await SharedPreferences.getInstance();
              pref.setString('Name', 'mohamed');
            },
            child: Text('set Name'),
          ),
          MaterialButton(
            onPressed: () async {
              SharedPreferences pref = await SharedPreferences.getInstance();
              String name = pref.getString('Name')!;
              print(name);
            },
            child: Text('print Name'),
          ),
        ],
      ),
    );
  }
}
