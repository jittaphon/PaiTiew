import 'package:flutter/material.dart';
import 'package:paitiew/constant/text_constanst.dart';
import 'package:paitiew/widget/profile_menu.dart';
import 'package:paitiew/widget/profile_picture.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          ProfilePic(),
          SizedBox(height: 20),
          Text(
            "Alice",
            style: TextStyle(
                fontFamily: "IBM",
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: TextConstants.subheader),
          ),
          SizedBox(height: 10),
          ProfileMenu(),
        ],
      ),
    );
  }
}
