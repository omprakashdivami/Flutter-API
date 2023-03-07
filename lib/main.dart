import 'package:flutter/material.dart';
import 'package:api/httpPage.dart';
import 'package:api/screen2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HttpPage(),
      initialRoute: '/list',
      routes: {
        "/list":(context) => HttpPage(),
        "/display":(context) => Screen2(),
      },
      debugShowCheckedModeBanner: false,
      // onGenerateRoute:(settings) {
      //   final args=settings.arguments as String;
      //   if(settings.name=='/display'){
      //     return MaterialPageRoute(builder:(context) {
      //       return Screen2(
      //         name: args,
      //       );
      //     },);
      //   }
      // },
    );
  }
}




