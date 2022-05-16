
import 'package:flutter/material.dart';

import 'map.dart';
class MainMapp extends StatefulWidget {
  const MainMapp({ Key? key }) : super(key: key);

  @override
  State<MainMapp> createState() => _MainMappState();
}

class _MainMappState extends State<MainMapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Maps"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Google Maps Application',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MapsPage()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.near_me),
      ),
    );
  }
}