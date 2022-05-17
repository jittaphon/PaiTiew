import 'package:flutter/material.dart';
import 'package:paitiew/constant/background.dart';
import 'package:like_button/like_button.dart';

class PoppularPlaceCard extends StatelessWidget {
  const PoppularPlaceCard({
    Key? key,
    required this.image,
    required this.place,
    required this.country,
    required this.press,
    required this.like,
    required this.postId,
    required this.userImage,
    required this.username,
  }) : super(key: key);

  final String image, place, country, like, postId, userImage, username;
  final Function press;

  @override
  Widget build(BuildContext context) {
    int numberOfLike = int.parse(like);

    return Center(
        child: Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 225,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    offset: Offset(3, 3),
                    blurRadius: 10,
                    spreadRadius: 1,
                    color: Colors.grey.shade400.withOpacity(0.8)),
              ]),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: Row(
            children: [
              CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: LikeButton(
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
                      numberOfLike = isLiked ? numberOfLike + 1 : numberOfLike;
                      return Icon(
                        Icons.favorite_border,
                        color: isLiked
                            ? BackgroundConstants.iconClick
                            : Colors.grey,
                        size: 22,
                      );
                    },
                  )),
            ],
          ),
        ),
        Positioned(
            bottom: 18,
            left: 20,
            child: Text('$place, $country ',
                style: TextStyle(
                    fontSize: 16, color: Colors.white, fontFamily: "IBM")))
      ],
    ));
  }
}
