import 'package:flutter/material.dart';

class LoginBackground extends StatefulWidget {
  const LoginBackground({Key? key}) : super(key: key);

  @override
  _LoginBackgroundState createState() => _LoginBackgroundState();
}

class _LoginBackgroundState extends State<LoginBackground> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        color: Colors.white,
        child: CustomPaint(
          size: Size(size.width, size.height),
          painter: Curved(),
        ),
      ),
    );
  }
}

class Curved extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;
    // Path rectPathThree = Path();
    Paint paint = Paint();
    paint.shader = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [.01, .25],
      colors: [
        Color(0xff117C6F),
        Color(0xff2FC4B2),
      ],
    ).createShader(rect);

    Paint paint2 = Paint();
    paint2.shader = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      stops: [.05, 1],
      colors: [
        Color(0xff2FC4B2),
        Color(0xff8DE5DB),
      ],
    ).createShader(rect);

    var path = Path();
    var path2 = Path();

    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(
      size.width * 0.9,
      size.height * 0.1,
      size.width * 0.6,
      size.height * 0.1,
    );
    path.quadraticBezierTo(
      size.width * 0.2,
      size.height * 0.1,
      size.width * 0.1,
      size.height * 0.3,
    );
    path.quadraticBezierTo(
      size.width * 0.06,
      size.height * 0.4,
      size.width * 0,
      size.height * 0.4,
    );
    path.close();
    //
    path2.moveTo(size.width, size.height);
    path2.lineTo(size.width, size.height * 0.7);
    path2.quadraticBezierTo(
      size.width,
      size.height * .65,
      size.width,
      size.height * 0.7,
    );
    path2.quadraticBezierTo(
      size.width * .9,
      size.height * .95,
      size.width * 0.2,
      size.height * 0.97,
    );
    path2.quadraticBezierTo(
      size.width * .1,
      size.height * .98,
      size.width * 0.1,
      size.height,
    );
    
    canvas.drawPath(path, paint);
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
