import 'package:flutter/material.dart';
import 'package:paitiew/constant/background.dart';
import 'package:like_button/like_button.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.image,
    required this.place,
    required this.country,
    required this.press,
    required this.username,
    required this.userImage,
    required this.title,
    required this.like,
    required this.comment,
  }) : super(key: key);

  final String image, place, country, username, userImage, title, like, comment;
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
                          Text(
                            "$place, $country",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "IBM"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 8),
            child: Text(
              " $title #$place #$country ",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: "IBM"),
            ),
          ),
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 3),
              child: Container(
                  height: 340,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            Positioned(
              bottom: 15,
              left: 35,
              child: Row(
                children: [
                  LikeButton(
                    likeCount: int.parse(like),
                    countPostion: CountPostion.right,
                    size: 20,
                    circleSize: 12,
                    circleColor: CircleColor(
                        start: Color.fromARGB(255, 183, 61, 79),
                        end: Color.fromARGB(255, 235, 114, 98)),
                    bubblesColor: BubblesColor(
                        dotPrimaryColor: Color(0xfff69c6d),
                        dotSecondaryColor: Color(0xfff57c73),
                        dotThirdColor: Color(0xfff6bc66)),
                    likeBuilder: (bool isLiked) {
                      return Icon(
                        Icons.favorite_border,
                        color: isLiked
                            ? BackgroundConstants.iconClick
                            : Colors.grey,
                        size: 22,
                      );
                    },
                  ),
                  SizedBox(width: 25),
                  LikeButton(
                    likeCount: int.parse(comment),
                    countPostion: CountPostion.right,
                    size: 20,
                    circleSize: 12,
                    circleColor: CircleColor(
                        start: Color.fromARGB(255, 183, 61, 79),
                        end: Color.fromARGB(255, 235, 114, 98)),
                    bubblesColor: BubblesColor(
                        dotPrimaryColor: Color(0xfff69c6d),
                        dotSecondaryColor: Color(0xfff57c73),
                        dotThirdColor: Color(0xfff6bc66)),
                    likeBuilder: (bool isLiked) {
                      return Icon(
                        Icons.comment_bank_outlined,
                        color: isLiked
                            ? BackgroundConstants.iconClick
                            : Colors.grey,
                        size: 22,
                      );
                    },
                  ),
                ],
              ),
            ),
          ]),
          const SizedBox(height: 24),
          Container(
            width: 370,
            height: 1, // Thickness
            color: Colors.grey.withOpacity(0.4),
          )
        ],
      ),
    );
  }
}
