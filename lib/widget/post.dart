import 'package:flutter/material.dart';
import 'package:paitiew/constant/text_constanst.dart';
import 'package:paitiew/widget/post_card.dart';

class Post extends StatelessWidget {
  const Post({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  PostCard(
                    username: "ชาช่า",
                    userImage:
                        "https://cdn.pixabay.com/photo/2019/05/08/21/21/cat-4189697_960_720.jpg",
                    image:
                        "https://cdn.pixabay.com/photo/2021/12/15/07/29/saint-isaac-cathedral-6871954_960_720.jpg",
                    place: "Chiang Mai",
                    country: "Thailand",
                    title: "Happy",
                    press: () {},
                  ),
                  PostCard(
                    username: "นนนี่",
                    userImage:
                        "https://cdn.pixabay.com/photo/2019/05/08/21/21/cat-4189697_960_720.jpg",
                    image:
                        "https://cdn.pixabay.com/photo/2021/07/20/17/15/dome-of-rock-6481240_960_720.jpg",
                    place: "Chiang Mai",
                    country: "Thailand",
                    title: "Happy",
                    press: () {},
                  ),
                  PostCard(
                    username: "อาร์ต",
                    userImage:
                        "https://cdn.pixabay.com/photo/2019/05/08/21/21/cat-4189697_960_720.jpg",
                    image:
                        "https://cdn.pixabay.com/photo/2019/06/13/11/22/golden-gate-bridge-4271364_960_720.jpg",
                    place: "Chiang Mai",
                    country: "Thailand",
                    title: "Happy",
                    press: () {},
                  ),
                  PostCard(
                    username: "ชาช่า",
                    userImage:
                        "https://cdn.pixabay.com/photo/2019/05/08/21/21/cat-4189697_960_720.jpg",
                    image:
                        "https://cdn.pixabay.com/photo/2021/12/15/07/29/saint-isaac-cathedral-6871954_960_720.jpg",
                    place: "Chiang Mai",
                    country: "Thailand",
                    title: "Happy",
                    press: () {},
                  ),
                  PostCard(
                    username: "นนนี่",
                    userImage:
                        "https://cdn.pixabay.com/photo/2019/05/08/21/21/cat-4189697_960_720.jpg",
                    image:
                        "https://cdn.pixabay.com/photo/2021/07/20/17/15/dome-of-rock-6481240_960_720.jpg",
                    place: "Chiang Mai",
                    country: "Thailand",
                    title: "Happy",
                    press: () {},
                  ),
                  PostCard(
                    username: "อาร์ต",
                    userImage:
                        "https://cdn.pixabay.com/photo/2019/05/08/21/21/cat-4189697_960_720.jpg",
                    image:
                        "https://cdn.pixabay.com/photo/2019/06/13/11/22/golden-gate-bridge-4271364_960_720.jpg",
                    place: "Chiang Mai",
                    country: "Thailand",
                    title: "Happy",
                    press: () {},
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
