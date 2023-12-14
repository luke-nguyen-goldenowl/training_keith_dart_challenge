import 'package:flutter/material.dart';
import 'package:gallery_app/widgets/custom_box_shape_widgets/ticket_clipper_widget.dart';

class TicketItem extends StatelessWidget {
  const TicketItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipPath(
              clipper: TicketClipper(),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green[100],
                          ),
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          child: const Text(
                            "10k",
                            style: TextStyle(fontSize: 18, color: Colors.green),
                          ),
                        ),
                        const SizedBox(width: 25),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "GIOITHIEU",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            const Text(
                              "Giảm giá 12k cho đơn hàng",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Kết thúc: 31/12/2021",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.blue, width: 2)),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
