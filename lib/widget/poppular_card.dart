import 'package:flutter/material.dart';

class PoppularPlaceCard extends StatelessWidget {
  const PoppularPlaceCard({
    Key? key,
    required this.image,
    required this.place,
    required this.country,
    required this.press,
  }) : super(key: key);

  final String image, place, country;
  final Function press;

  @override
  Widget build(BuildContext context) {
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
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    offset: Offset(3, 3),
                    blurRadius: 10,
                    spreadRadius: 1,
                    color: Colors.grey.shade400.withOpacity(0.8)),
              ]),
        ) ,
        Positioned(
            bottom: 18,
            left: 20,
            child: Text('$place, $country',
                style: TextStyle(
                    fontSize: 16, color: Colors.white, fontFamily: "IBM")))
      ],
    ));
  }
}
