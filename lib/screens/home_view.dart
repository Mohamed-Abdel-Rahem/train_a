import 'package:flutter/material.dart';
import 'package:train_a/data/employees.dart';
import 'package:train_a/utils/extension/context_extension.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String imagePlaceHolder =
      'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: employees.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            context.showSnack(employees[index].name);
          },
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              employees[index].picture ?? imagePlaceHolder,
            ),
          ),
          title: Text(employees[index].name),
          subtitle: Text(employees[index].position),
          trailing: SizedBox(
            width: 100,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      if (employees[index].phone != null) {
                        callEmployee(
                          employees[index].phone!,
                        );
                      }
                    },
                    icon: Icon(
                      Icons.phone,
                      color: Colors.green,
                    )),
                IconButton(
                    onPressed: () {
                      if (employees[index].email != null) {
                        senndEmail(
                          employees[index].email!,
                        );
                      }
                    },
                    icon: Icon(
                      Icons.email,
                      color: Colors.red,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> callEmployee(String phone) async {
    Uri url = Uri.parse('tel:+$phone');
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> senndEmail(String email) async {
    Uri url = Uri.parse('mailto:+$email');
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
