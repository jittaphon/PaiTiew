import 'package:flutter/material.dart';
import 'package:paitiew/widget/poppular_card.dart';
import '../pages/detail/detail.dart';
import 'package:paitiew/util/post.dart';

class PoppularPlace extends StatefulWidget {
  const PoppularPlace({
    Key? key,
  }) : super(key: key);

  @override
  _PoppularPlaceState createState() => _PoppularPlaceState();
}

class _PoppularPlaceState extends State<PoppularPlace> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: Post.posts == null ? 0 : Post.posts.length,
        itemBuilder: (context, index) {
          Map post = Post.posts[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                      postId: post['postId'],
                      title: post['title'],
                      like: post['like'],
                      place: post['place'],
                      country: post['country'],
                      image: post['image'],
                      username: post['username'],
                      userImage: post['userImage']),
                ),
              );
            },
            child: PoppularPlaceCard(
              username: post['username'],
              userImage: post['userImage'],
              postId: post['postId'],
              image: post['image'],
              place: post['place'],
              country: post['country'],
              like: post['like'],
              press: () {},
            ),
          );
        },
      ),
    );
  }
}
