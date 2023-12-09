import 'package:flutter/material.dart';

class CupertinoScreen extends StatelessWidget {
  const CupertinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyanAccent,
      child: const Text("hello cupertino"),
    );
  }
}
