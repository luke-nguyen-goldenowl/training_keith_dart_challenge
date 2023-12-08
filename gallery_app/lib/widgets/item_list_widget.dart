import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.describe});

  final dynamic title, icon, describe;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          print("press $title");
        },
        leading: Icon(
          icon,
          color: Colors.black38,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Text(
            describe,
            style: const TextStyle(color: Colors.black45),
          ),
        ));
  }
}
