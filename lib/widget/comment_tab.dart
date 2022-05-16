import 'package:flutter/material.dart';
import 'package:paitiew/constant/background.dart';
import 'package:like_button/like_button.dart';

class CommentTab extends StatelessWidget {
  const CommentTab({
    Key? key,
    required this.press,
    required this.postId,
    required this.userImage,
    required this.username,
    required this.comment,
    required this.userId,
  }) : super(key: key);

  final String postId, userImage, username, comment, userId;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 2),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(userImage),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                            color: Colors.black.withOpacity(0.3), width: 0.5),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 2,
                            spreadRadius: 2,
                            color: Color.fromARGB(255, 93, 93, 93)
                                .withOpacity(0.2),
                          ),
                        ])),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$username",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: "IBM",
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.grey,
                            size: 14,
                          ),
                          const SizedBox(width: 3),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
