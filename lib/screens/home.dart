import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:train_a/screens/home_view.dart';
import 'package:train_a/utils/extension/context_extension.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;
  @override
  void initState() {
    super.initState();
    viewCheckState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Visibility(
            child: Image.network(
              'https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg',
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
            },
          ),
          ElevatedButton(
            onPressed: () {
              _saveCheckedState();
            },
            child: Text('Save Changes'),
          ),
        ],
      ),
    );
  }

  //to save the last state
  void _saveCheckedState() async {
    //take object from the  shared preferences
    SharedPreferences pref = await SharedPreferences.getInstance();
    //return the bool the state saved or not after then
    bool saved = await pref.setBool('checked', isChecked);
    if (saved) {
      context.showSnack('saved');
    }
  }

//to show state after saved by _saveCheckedState() method
  void viewCheckState() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      isChecked = pref.getBool('checked') ?? false;
    });
  }
}
