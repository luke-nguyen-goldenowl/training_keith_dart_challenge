import 'package:flutter/material.dart';
import 'package:gallery_app/modules/home/model/data_home.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({super.key, required this.content});

  final DataHome content;

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
