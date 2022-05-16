import 'package:flutter/material.dart';
import 'package:paitiew/pages/Login/login_background.dart';
import 'package:paitiew/Map/map.dart';
import 'package:paitiew/Map/mappush.dart';
import 'package:paitiew/pages/Login/login_form.dart';
import '../detail/detail.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const <Widget>[
         LoginBackground(),
         LoginForm(),
         //DetailPage(),
         //MainMapp()
        ],
      ),
    );
  }
}
