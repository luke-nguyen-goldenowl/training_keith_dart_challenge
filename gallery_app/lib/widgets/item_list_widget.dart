import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({super.key, this.content});

  final dynamic content;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          print("press ${content.title}");
        },
        leading: Icon(
          content.icon,
          color: Colors.black38,
        ),
        title: Text(
          content.title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Text(
            content.describe,
            style: const TextStyle(color: Colors.black45),
          ),
        ));
  }
}
