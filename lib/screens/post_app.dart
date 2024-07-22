import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostApp extends StatelessWidget {
  const PostApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post App'),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                getDataByApi();
              },
              child: Text('get Data'),
            ),
          ),
        ],
      ),
    );
  }

  getDataByApi() async {
    http.Response rs = await http.get(
      Uri.parse(
        'https://jsonplaceholder.typicode.com/posts',
      ),
    );
    print(rs.body);
  }
}
