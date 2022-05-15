import 'package:flutter/material.dart';
import 'package:paitiew/constant/text_constanst.dart';

class HeaderWithNoti extends StatelessWidget {
  const HeaderWithNoti({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.only(
              top: 80,
              left: 20,
            ),
            child: Row(children: [
              Text(
                "PAITIEW",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: TextConstants.header),
              ),
              Expanded(child: Container()),
              Container(
                  margin: EdgeInsets.only(right: 20),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_rounded,
                        size: 30,
                        color: Colors.grey,
                      )))
            ]))
      ],
    );
  }
}
