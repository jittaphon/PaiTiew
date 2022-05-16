import 'package:flutter/material.dart';
import 'package:paitiew/util/comment.dart';
import 'package:paitiew/widget/comment_tab.dart';

class ShowComment extends StatelessWidget {
  const ShowComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: Comment.comments == null ? 0 : Comment.comments.length,
        itemBuilder: (context, index) {
          Map comment = Comment.comments[index];
          return CommentTab(
            userId: comment['userId'],
            username: comment['username'],
            userImage: comment['userImage'],
            postId: comment['postId'],
            comment: comment['comment'],
            press: () {},
          );
        });
  }
}
