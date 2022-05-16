import 'package:flutter/material.dart';
import 'package:paitiew/pages/Login/login_backgroud.dart';
import 'package:paitiew/pages/Login/login_form.dart';

import '../detail/detail.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Stack(
            children: const [
              //LoginBackground(),
              //LoginForm(),
              DetailPage(),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
