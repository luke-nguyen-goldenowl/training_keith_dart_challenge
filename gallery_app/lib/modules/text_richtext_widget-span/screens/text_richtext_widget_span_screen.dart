import 'package:flutter/material.dart';

class TextRichTextSpanScreen extends StatelessWidget {
  const TextRichTextSpanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Rich Text View"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Creates a text widget. If the [style] argument is null, the text will use the style from the...",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.pink,
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
            const NumberText(),
            const NumberRichText(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // padding: const EdgeInsets.symmetric(vertical: 0),
                  color: Colors.pink[100],
                  child: const Text(
                    "G",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  color: Colors.pink[50],
                  child: const Text(
                    "o",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  color: Colors.pink[200],
                  child: const Text(
                    "o",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  // padding: const EdgeInsets.symmetric(vertical: 0),
                  color: Colors.pink[100],
                  child: const Text(
                    "g",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  color: Colors.pink[50],
                  child: const Text(
                    "I",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  // padding: const EdgeInsets.symmetric(vertical: 0),
                  color: Colors.pink[100],
                  child: const Text(
                    "e",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NumberText extends StatelessWidget {
  const NumberText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "First",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        const Icon(
          Icons.arrow_forward,
          color: Colors.red,
        ),
        const Text(
          "second ",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            color: Colors.grey,
          ),
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.orange,
        ),
        const Text(
          " third",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

class NumberRichText extends StatelessWidget {
  const NumberRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: const <TextSpan>[
          TextSpan(
            text: 'One ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
          TextSpan(
            text: 'Two ',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: Colors.black),
          ),
          TextSpan(
            text: 'Three Four ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
          TextSpan(
            text: 'Five ',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w900,
              color: Colors.red,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
