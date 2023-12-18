import 'package:flutter/material.dart';

import 'package:gallery_app/widgets/custom_box_shape_widgets/ticket_item_widget.dart';

class CustomBoxShapeScreen extends StatelessWidget {
  const CustomBoxShapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Text("Custom Box Shape View"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: const Column(
          children: [
            TicketItem(),
            TicketItem(),
            TicketItem(),
            TicketItem(),
          ],
        ),
      ),
    );
  }
}
