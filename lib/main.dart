import 'package:flutter/material.dart';
import 'package:second_project/screens/AddTask.dart';
import 'package:second_project/screens/DetailTask.dart';
import 'package:second_project/screens/LoginTask.dart';
import 'package:second_project/screens/TodoHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Todohome(),
      // home: Logintask()
      // home: Addtask()
      initialRoute: '/',
      // routes is an object that holds path which defines which screen
      // to open when we navigated through name
      routes: {
        '/': (context) => Logintask(),
        '/home': (context) => Todohome(),
      },
      // asdf
    );
  }
}
