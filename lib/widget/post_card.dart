import 'package:flutter/material.dart';
import 'package:paitiew/constant/text_constanst.dart';

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
  }) : super(key: key);

  final String image, place, country, username, userImage, title;
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
            margin: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(userImage),
                        fit: BoxFit.cover,
                      ),
                    )),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$username",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
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
            padding: const EdgeInsets.only(left: 20, top: 8),
            child: Text(
              " $title #$place #$country ",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: "IBM"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 3),
            child: Container(
                height: 340,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Container(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(children: [
                  const Icon(Icons.favorite_border, size: 14),
                  const SizedBox(width: 5),
                  const Text(
                    "1,000 Liked",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "IBM"),
                  ),
                ]),
              )),
              const SizedBox(width: 25),
              Container(
                  child: Row(children: [
                const Icon(Icons.comment_bank_outlined, size: 14),
                const SizedBox(width: 5),
                const Text(
                  "1,000 Liked",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "IBM"),
                ),
              ])),
            ],
          ),
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
