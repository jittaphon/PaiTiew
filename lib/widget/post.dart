import 'package:flutter/material.dart';
import 'package:paitiew/pages/detail/detail.dart';
import 'package:paitiew/widget/post_card.dart';
import 'package:paitiew/util/post.dart';

class Post extends StatelessWidget {
  const Post({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: posts == null ? 0 : posts.length,
      itemBuilder: (context, index) {
        Map post = posts[index];

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
          child: PostCard(
            username: post['username'],
            userImage: post['userImage'],
            image: post['image'],
            place: post['place'],
            country: post['country'],
            title: post['title'],
            comment: post['comment'],
            like: post['like'],
            press: () {},
          ),
        );
      },
    );
  }
}
