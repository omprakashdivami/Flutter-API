import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;

class HttpPage extends StatefulWidget {
  const HttpPage({super.key});

  @override
  State<HttpPage> createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  @override
  List<dynamic> arr = [];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Users'),
      ),
      body: ListView.builder(
          itemCount: arr.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: Text(" ${index+1} . ${arr[index]["name"]}"));
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: getUsers, child: const Icon(Icons.add)),
    );
  }

  getUsers() async {
    var response = await http.get(Uri.parse(
        'https://63a5bb3df8f3f6d4abfe41ac.mockapi.io/test1/flutter-practice'));
    if (response.statusCode == 200) {
      // print(jsonDecode(response.body));
      setState(() {
        arr = jsonDecode(response.body);
      });
      // print(arr);
    }
  }
}
