import 'package:flutter/material.dart';
import 'package:gallery_app/modules/home/model/data_home.dart';
import 'package:gallery_app/widgets/item_list_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 110, 255),
        title: const Text(
          "My widget",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
        ),
        actions: const [
          Icon(
            Icons.account_circle,
            size: 30,
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: listData
            .map((data) => ItemListWidget(
                  content: data,
                ))
            .toList(),
      ),
    );
  }
}
