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
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
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
            NumberWidgetSpanText(),
            NumberRichText(),
            GoogleRichText()
          ],
        ),
      ),
    );
  }
}

class GoogleRichText extends StatelessWidget {
  const GoogleRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        // mainAxisAlignment: MainAxisAlignment.center,
        text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
          TextSpan(
              text: "G",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 40,
                backgroundColor: Color.fromARGB(255, 255, 196, 217),
                height: 0,
              )),
          TextSpan(
              text: "o",
              style: TextStyle(
                color: Colors.red,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                backgroundColor: Color.fromARGB(255, 245, 227, 233),
                height: 1.5,
                fontFamily: "Blinker",
              )),
          TextSpan(
              text: "o",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                backgroundColor: Color.fromARGB(255, 211, 124, 153),
                height: 1.5,
                fontFamily: "Blinker",
              )),
          TextSpan(
              text: "g",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 40,
                backgroundColor: Color.fromARGB(255, 255, 196, 217),
                height: 0,
              )),
          TextSpan(
              text: "l",
              style: TextStyle(
                color: Colors.green,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                backgroundColor: Color.fromARGB(255, 245, 227, 233),
                height: 1.5,
              )),
          TextSpan(
              text: "e",
              style: TextStyle(
                color: Colors.red,
                fontSize: 40,
                backgroundColor: Color.fromARGB(255, 255, 196, 217),
                height: 0,
              )),
        ]));
  }
}

class NumberWidgetSpanText extends StatelessWidget {
  const NumberWidgetSpanText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        const TextSpan(
          text: 'First ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            decoration: TextDecoration.none,
          ),
        ),
        const WidgetSpan(
            child: Icon(
          Icons.arrow_forward,
          color: Colors.red,
        )),
        TextSpan(
          text: 'second ',
          style: TextStyle(
            fontSize: 35,
            // fontWeight: FontWeight.bold,
            color: Colors.grey[500],
            decoration: TextDecoration.none,
          ),
        ),
        WidgetSpan(
            child: Container(
          height: 100,
          width: 100,
          color: Colors.amber[700],
        )),
        TextSpan(
          text: ' third',
          style: TextStyle(
            fontSize: 35,
            // fontWeight: FontWeight.bold,
            color: Colors.grey[500],
            decoration: TextDecoration.none,
          ),
        ),
      ]),
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
                decorationColor: Colors.black,
                fontStyle: FontStyle.italic),
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
