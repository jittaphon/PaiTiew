import 'package:flutter/material.dart';
import 'package:paitiew/pages/detail/detail.dart';


import 'constant/constants.dart';
import 'pages/home/main_screen.dart';

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Pai Tiew ',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: DetailPage(),
  //   );
  // }

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      home: MainScreen(),
    );
  }
}
