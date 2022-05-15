import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/78/eb/e6/78ebe6fd93bc8b63f19e72387b6bfe85.jpg'),
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
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 240, 4, 4),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),

                // ------------------------- โซน detail ----------------
                Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 500),
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 223, 223),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Text('Aorura'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                                child: Text(
                              'Auroras are the result of disturbances in the magnetosphere caused by the solar wind. Major disturbances result from enhancements in the speed of the solar wind from coronal holes and coronal mass ejections. These disturbances alter the trajectories of charged particles in the magnetospheric plasma.',
                            )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Text('Comment'),
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
