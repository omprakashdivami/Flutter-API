import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:convert';


class Screen2 extends StatefulWidget {
  const Screen2({super.key,this.name});
  final String? name;
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  // ignore: recursive_getters
  String get name => name;
  
  @override
  Widget build(BuildContext context) {
  dynamic name=ModalRoute.of(context)?.settings.arguments; // catching Args

     return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Text('hello, '+name, style: TextStyle(fontSize: 30, color: Colors.amber),)],
        ),
      ),
    );
  }
}