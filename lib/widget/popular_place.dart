import 'package:flutter/material.dart';
import 'package:paitiew/widget/poppular_card.dart';
import '../pages/detail/detail.dart';

class PoppularPlace extends StatelessWidget {
  const PoppularPlace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PoppularPlaceCard(
            image:
                "https://cdn.pixabay.com/photo/2021/12/15/07/29/saint-isaac-cathedral-6871954_960_720.jpg",
            place: "Chiang Mai",
            country: "Thailand",
            like: "10",
            press: () {},
          ),
          PoppularPlaceCard(
            image:
                "https://cdn.pixabay.com/photo/2021/07/20/17/15/dome-of-rock-6481240_960_720.jpg",
            place: "Chiang Mai",
            country: "Thailand",
            like: "20",
            press: () {},
          ),
          PoppularPlaceCard(
            image:
                "https://cdn.pixabay.com/photo/2019/06/13/11/22/golden-gate-bridge-4271364_960_720.jpg",
            place: "Chiang Mai",
            country: "Thailand",
            like: "30",
            press: () {},
          ),
        ],
      ),
    );
  }
}
