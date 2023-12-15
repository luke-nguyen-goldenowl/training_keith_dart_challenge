import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Update Everyday",
                style: TextStyle(color: Colors.red),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text("5"),
                  Icon(Icons.check_box_outlined)
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "Bai Wu, a d-list writer who ran out of money, was thrown out of the house by his landlord. At the lowest point "
            "of his life, he walked in a lottery store with 20 bucks. Thinking he had nothing to lose, Bai Wu spent all his"
            " money on the lottery. Surprisingly, when he was wondering what the possibility of winning lottery will be,"
            " he found he could see the success rate!",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromRGBO(247, 212, 14, 0.3)),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.stars_rounded,
                      color: Colors.orange,
                    ),
                    Text(
                      "Top Fantasy No.15",
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 12,
                      color: Colors.orange,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(75, 179, 176, 161),
                ),
                child: const Text(
                  'Modern',
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Icon(
                Icons.account_circle,
                size: 40,
              ),
              SizedBox(width: 10),
              Text("Haotoon")
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: Color.fromARGB(255, 95, 95, 95), width: 0.5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.card_giftcard,
                      size: 20,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 10),
                    Text("8845 gift (s)"),
                  ],
                ),
                SizedBox(
                  height: 30,
                  width: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white),
                    child: const Text("Gift"),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: Color.fromARGB(255, 95, 95, 95), width: 0.5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.how_to_vote,
                      size: 20,
                      color: Colors.red,
                    ),
                    SizedBox(width: 10),
                    Text("509 Voted"),
                  ],
                ),
                SizedBox(
                  height: 30,
                  width: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white),
                    child: const Text("Vote"),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: Color.fromARGB(255, 95, 95, 95), width: 0.5))),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.currency_rupee,
                      size: 20,
                      color: Colors.orange,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("TopFans"),
                        Text(
                          "79652 support in total",
                          style: TextStyle(
                              fontSize: 10, color: Colors.grey.shade700),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.account_circle,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.account_circle,
                      color: Colors.red,
                    ),
                    const Icon(
                      Icons.account_circle,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey.shade800,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
