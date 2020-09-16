import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0, 4 * size.height / 5);
    Offset firstControlPoint = new Offset(size.width / 4, size.height);
    Offset firstEndPoint = new Offset(size.width / 2, 4 * size.height / 5);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    Offset secondControlPoint = new
     Offset(3 * size.width / 4, 3 * size.height / 5);
    Offset secondEndPoint = new Offset(size.width, 4 * size.height / 5);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);


    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
