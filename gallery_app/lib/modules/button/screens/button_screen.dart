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
        body: Container(
          // color: const Color.fromARGB(255, 215, 232, 245),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                // mainAxisSize: MainAxisSize.max,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
                  // Container(
                  //   width: double.infinity,
                  //   color: Colors.grey,
                  //   decoration:
                  //       BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  //   child: CupertinoButton(
                  //     child: const Text("Cupertino Button"),
                  //     onPressed: () {
                  //       print("cupertino button");
                  //     },
                  //   ),
                  // ),
                  const SizedBox(height: 10),
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
