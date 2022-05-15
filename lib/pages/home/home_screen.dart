import 'package:flutter/material.dart';
import 'package:paitiew/constant/text_constanst.dart';
import 'package:paitiew/widget/header.dart';
import 'package:paitiew/widget/popular_place.dart';
import 'package:paitiew/widget/search.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWithNoti(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Text("Find a place for yourself!",
                  style: TextStyle(
                    fontFamily: "IBM",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ),
          SizedBox(height: 12),
          SearchAndIcon(),
          SizedBox(height: 18),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 24),
              child: Text("Most Poppular",
                  style: TextStyle(
                    fontFamily: "IBM",
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: TextConstants.subheader,
                  )),
            ),
          ),
          PoppularPlace()
        ],
      ),
    );
  }
}
