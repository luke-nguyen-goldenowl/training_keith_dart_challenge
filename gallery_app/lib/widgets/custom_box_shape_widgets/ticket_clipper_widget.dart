import 'package:flutter/material.dart';

class TicketClipper extends CustomClipper<Path> {
  double clipRadius = 5,
      margin = 20,
      borderRadius = 10,
      smallClipRadius = 5,
      clipPadding = 18;
  int numberOfSmallClips = 13;
  @override
  Path getClip(Size size) {
    var path = Path();
    final clipX = size.width * 0.2;
    path.addRRect(RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Radius.circular(borderRadius),
    ));

    final clipPath = Path();

    clipPath.addOval(Rect.fromCircle(
      center: Offset(clipX, 0),
      radius: clipRadius,
    ));

    clipPath.addOval(Rect.fromCircle(
      center: Offset(clipX, size.height),
      radius: clipRadius,
    ));

    const dashHeight = 3.0;
    const dashSpace = 2.0;
    double startY = 10;

    while (startY < size.height - 5) {
      clipPath.addRect(Rect.fromLTWH(clipX - 1, startY, dashSpace, dashHeight));
      startY += 8;
    }

    // combine two path together
    final ticketPath = Path.combine(
      PathOperation.reverseDifference,
      clipPath,
      path,
    );

    return ticketPath;
  }

  @override
  bool shouldReclip(TicketClipper oldClipper) => false;
}
