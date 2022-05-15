import 'package:flutter/material.dart';
import 'package:paitiew/pages/Login/login_backgroud.dart';
import 'package:paitiew/pages/Login/login_form.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const <Widget>[
          LoginBackground(),
          LoginForm(),
        ],
      ),
    );
  }
}
