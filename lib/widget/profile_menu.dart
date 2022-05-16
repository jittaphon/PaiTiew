import 'package:flutter/material.dart';
import 'package:paitiew/constant/text_constanst.dart';
import 'package:paitiew/pages/Login/login.dart';

class ProfileMenu extends StatelessWidget {
  ProfileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.black,
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Color(0xFFF5F6F9),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  size: 20,
                  color: TextConstants.subheader,
                ),
                SizedBox(width: 20),
                Expanded(child: Text("My Account")),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.black,
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Color(0xFFF5F6F9),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.notifications_none_rounded,
                  size: 20,
                  color: TextConstants.subheader,
                ),
                SizedBox(width: 20),
                Expanded(child: Text("Notifications")),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.black,
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Color(0xFFF5F6F9),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.settings_rounded,
                  size: 20,
                  color: TextConstants.subheader,
                ),
                SizedBox(width: 20),
                Expanded(child: Text("Settings")),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.black,
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Color(0xFFF5F6F9),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.help_outline_rounded,
                  size: 20,
                  color: TextConstants.subheader,
                ),
                SizedBox(width: 20),
                Expanded(child: Text("Help Center")),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.black,
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Color(0xFFF5F6F9),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
                ),
              );
            },
            child: Row(
              children: [
                Icon(
                  Icons.logout_rounded,
                  size: 20,
                  color: TextConstants.subheader,
                ),
                SizedBox(width: 20),
                Expanded(child: Text("Log Out")),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
