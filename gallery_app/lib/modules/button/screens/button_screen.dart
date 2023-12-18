import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          title: const Text("Button View"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              DropdownButton(
                isExpanded: true,
                items: ['Option 1', 'Option 2', 'Option 3'].map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                hint: const Text("Dropdown"),
                onChanged: (value) {
                  print("option $value");
                },
              ),
              DropdownButtonFormField(
                onChanged: (value) {
                  print("option $value");
                },
                items: ['Option 1', 'Option 2', 'Option 3'].map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                hint: const Text("Dropdown Form Field"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    minimumSize: const Size(30, 30)),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: const Text("Elevated Button"),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                icon: const Icon(Icons.account_circle),
                label: const Text("Elevated Button Icon"),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                child: const Text("Text Button"),
              ),
              TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                icon: const Icon(Icons.account_circle),
                label: const Text("Text Button Icon"),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                  foregroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text("Outline Button "),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                  foregroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                icon: const Icon(Icons.account_circle),
                label: const Text("Outline Button Icon"),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(0),
                width: double.infinity,
                child: CupertinoButton(
                  color: Colors.grey,
                  child: const Text("Cupertino Button"),
                  onPressed: () {
                    print("cupertino button");
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ClipPath(
                  clipper: CustomButtonClip(),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.grey,
                    child: const Text("Material Button"),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ClipPath(
                  clipper: CustomButtonClip(),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.grey,
                    child: const Text("Raw Material Button"),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const SelectButtonCustom(),
              IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.add),
                color: Colors.white,
                style: IconButton.styleFrom(backgroundColor: Colors.blue),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class SelectButtonCustom extends StatefulWidget {
  const SelectButtonCustom({
    super.key,
  });

  @override
  State<SelectButtonCustom> createState() => _SelectButtonCustomState();
}

class _SelectButtonCustomState extends State<SelectButtonCustom> {
  int selectValue = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {
            setState(() {
              selectValue = 1;
            });
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.blue,
            backgroundColor: selectValue == 1 ? Colors.blue[100] : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: const Text("Option 1"),
        ),
        OutlinedButton(
          onPressed: () {
            setState(() {
              selectValue = 2;
            });
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.blue,
            backgroundColor: selectValue == 2 ? Colors.blue[100] : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: const Text("Option 2"),
        ),
        OutlinedButton(
          onPressed: () {
            setState(() {
              selectValue = 3;
            });
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.blue,
            backgroundColor: selectValue == 3 ? Colors.blue[100] : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: const Text(
            "Option 3",
          ),
        )
      ],
    );
  }
}

class CustomButtonClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    const clipRadius = 15.0;
    final clipX = size.width * 0.25;

    path.addRRect(RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      const Radius.circular(20),
    ));

    final clipPath = Path();
    clipPath.addOval(Rect.fromCircle(
      center: Offset(clipX, 0),
      radius: clipRadius,
    ));
    clipPath.addOval(Rect.fromCircle(
      center: Offset(clipX, size.height),
      radius: clipRadius,
    ));

    final ticketPath = Path.combine(
      PathOperation.reverseDifference,
      clipPath,
      path,
    );
    return ticketPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
