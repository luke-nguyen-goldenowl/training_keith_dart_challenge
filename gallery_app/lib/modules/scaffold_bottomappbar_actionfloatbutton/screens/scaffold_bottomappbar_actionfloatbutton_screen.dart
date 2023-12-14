import 'package:flutter/material.dart';

class ScaffoldScreen extends StatefulWidget {
  const ScaffoldScreen({super.key});

  @override
  State<ScaffoldScreen> createState() => _ScaffoldScreenState();
}

class _ScaffoldScreenState extends State<ScaffoldScreen> {
  bool _floatActionButton = true, _notch = true;
  FloatingActionButtonLocation _floatingActionButtonLocation =
      FloatingActionButtonLocation.endDocked;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text("Bottom App Bar View"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 240, 232, 232),
                            width: 1))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Float Action Button"),
                        Switch(
                          activeColor: Colors.blue,
                          value: _floatActionButton,
                          onChanged: (value) {
                            setState(() {
                              _floatActionButton = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Notch"),
                        Switch(
                          activeColor: Colors.blue,
                          value: _notch,
                          onChanged: (value) {
                            setState(() {
                              _notch = value;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Float Action Button Position",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Radio(
                      activeColor: Colors.blue,
                      value: FloatingActionButtonLocation.endDocked,
                      groupValue: _floatingActionButtonLocation,
                      onChanged: (value) {
                        setState(() {
                          _floatingActionButtonLocation = value!;
                        });
                      }),
                  const Text("Docked - End")
                ],
              ),
              Row(
                children: [
                  Radio(
                      activeColor: Colors.blue,
                      value: FloatingActionButtonLocation.centerDocked,
                      groupValue: _floatingActionButtonLocation,
                      onChanged: (value) {
                        setState(() {
                          _floatingActionButtonLocation = value!;
                        });
                      }),
                  const Text("Docked - Center")
                ],
              ),
              Row(
                children: [
                  Radio(
                      activeColor: Colors.blue,
                      value: FloatingActionButtonLocation.endFloat,
                      groupValue: _floatingActionButtonLocation,
                      onChanged: (value) {
                        setState(() {
                          _floatingActionButtonLocation = value!;
                        });
                      }),
                  const Text("Floating - End")
                ],
              ),
              Row(
                children: [
                  Radio(
                      activeColor: Colors.blue,
                      value: FloatingActionButtonLocation.centerFloat,
                      groupValue: _floatingActionButtonLocation,
                      onChanged: (value) {
                        setState(() {
                          _floatingActionButtonLocation = value!;
                        });
                      }),
                  const Text("Floating - Center")
                ],
              )
            ],
          ),
        ),
        floatingActionButton: _floatActionButton
            ? FloatingActionButton(
                shape: const CircleBorder(),
                backgroundColor: Colors.blue,
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
            : null,
        floatingActionButtonLocation: _floatingActionButtonLocation,
        bottomNavigationBar: BottomAppBar(
          // color: Colors.white,
          surfaceTintColor: Colors.white,
          shape: _notch ? const CircularNotchedRectangle() : null,
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 50,
            child: const Row(
              children: [
                Icon(
                  Icons.line_weight_rounded,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.favorite,
                  color: Colors.black,
                  size: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
