import 'package:flutter/material.dart';
import 'package:paitiew/constant/background.dart';
import 'package:paitiew/constant/text_constanst.dart';

class SearchAndIcon extends StatelessWidget {
  const SearchAndIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: BackgroundConstants.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    // padding: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                            fontFamily: "IBM"),
                        enabledBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 24,
                        color: Colors.grey,
                      )),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
