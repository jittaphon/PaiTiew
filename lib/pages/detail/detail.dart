import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:paitiew/constant/background.dart';
import 'package:paitiew/constant/constants.dart';
import 'package:paitiew/constant/text_constanst.dart';
import 'package:comment_box/comment/comment.dart';
import 'package:paitiew/pages/home/home_screen.dart';
import 'package:paitiew/widget/comment.dart';

class DetailPage extends StatefulWidget {
  DetailPage({
    Key? key,
    required this.postId,
    required this.image,
    required this.title,
    required this.like,
    required this.place,
    required this.country,
    required this.username,
    required this.userImage,
  }) : super(key: key);

  String postId, image, title, like, place, country, username, userImage;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();

  // List filedata = [
  //   {
  //     'name': 'Adeleye Ayodeji',
  //     'pic': 'https://picsum.photos/300/30',
  //     'message': 'I love to code'
  //   },
  //   {
  //     'name': 'Biggi Man',
  //     'pic': 'https://picsum.photos/300/30',
  //     'message': 'Very cool'
  //   },
  //   {
  //     'name': 'Biggi Man',
  //     'pic': 'https://picsum.photos/300/30',
  //     'message': 'Very cool'
  //   },
  //   {
  //     'name': 'Biggi Man',
  //     'pic': 'https://picsum.photos/300/30',
  //     'message': 'Very cool'
  //   },
  // ];

  // Widget commentChild(data) {
  //   return ListView(
  //     children: [
  //       for (var i = 0; i < data.length; i++)
  //         Padding(
  //           padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
  //           child: ListTile(
  //             leading: GestureDetector(
  //               onTap: () async {
  //                 // Display the image in large form.
  //                 print("Comment Clicked");
  //               },
  //               child: Container(
  //                 height: 50.0,
  //                 width: 50.0,
  //                 decoration: new BoxDecoration(
  //                     color: Colors.blue,
  //                     borderRadius: new BorderRadius.all(Radius.circular(50))),
  //                 child: CircleAvatar(
  //                     radius: 50,
  //                     backgroundImage: NetworkImage(data[i]['pic'] + "$i")),
  //               ),
  //             ),
  //             title: Text(
  //               data[i]['name'],
  //               style: TextStyle(fontWeight: FontWeight.bold),
  //             ),
  //             subtitle: Text(data[i]['message']),
  //           ),
  //         )
  //     ],
  //   );
  // }

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.pop(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });

    return !isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Stack(
              // ---------------- โซน รูป กับ กดหัวใจ --------------------
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(),
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: LikeButton(
                            onTap: onLikeButtonTapped,
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
                                Icons.arrow_back,
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
                  top: 450,
                  left: 20,
                  child: LikeButton(
                    likeCount: int.parse(widget.like),
                    countPostion: CountPostion.right,
                    size: 30,
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
                        size: 30,
                      );
                    },
                  ),
                ),

                // ------------------------- โซน detail ----------------
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(top: 490),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Color(0xfff3eff5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text(
                              widget.place,
                              style: TextStyle(
                                  color: TextConstants.subheader,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "IBM"),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10),
                        child: Row(
                          children: [
                            Flexible(
                                child: Text(
                              widget.title,
                              style: TextStyle(
                                  color: TextConstants.primary,
                                  fontSize: 15,
                                  fontFamily: "IBM"),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Row(
                      //   children: [
                      //     Container(
                      //       child: Text('Comment',
                      //           style: TextStyle(
                      //               color: TextConstants.subheader,
                      //               fontSize: 18,
                      //               fontWeight: FontWeight.w800,
                      //               fontFamily: "IBM")),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
