import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.size, this.type = 'Row'});

  final double size;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: size - 30 > 0.001
          ? (type == 'Row'
              ? const EdgeInsets.symmetric(horizontal: 20)
              : const EdgeInsets.symmetric(vertical: 20))
          : null,
      child: Stack(
        children: [
          Transform.rotate(
            origin: const Offset(0, 0),
            angle: 3.14 / 4,
            child: Container(
              color: Colors.black,
              width: size,
              height: size,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: size,
            width: size,
            color: Colors.black,
            child: Text(
              "A",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: size - 30 > 0 ? 35 : 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
