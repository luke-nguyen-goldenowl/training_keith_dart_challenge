import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoScreen extends StatelessWidget {
  const CupertinoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_suggest_outlined), label: "Widget"),
          BottomNavigationBarItem(
              icon: Icon(Icons.folder_open), label: "Modal"),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_copy_outlined), label: "Form"),
        ],
        activeColor: Colors.blue,
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(builder: (BuildContext context) {
          return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Widget',
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 80),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        "Pull to refresh",
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Indicator",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    const Center(
                        child: CupertinoActivityIndicator(
                      radius: 12,
                    )),
                    const SizedBox(height: 30),
                    const Text(
                      "Button",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Center(
                      child: CupertinoButton(
                        child: const Text(
                          'Button',
                          style: TextStyle(color: Colors.blue),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Center(
                      child: CupertinoButton(
                        color: Colors.blue,
                        onPressed: () {},
                        child: const Text('With background'),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Slider",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const SliderCustom(),
                    const SizedBox(height: 10),
                    const SliderCustom(),
                    const SizedBox(height: 30),
                    const Text(
                      "Switch",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoSwitchCustom(),
                        CupertinoSwitchCustom(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
      },
    );
  }
}

class SliderCustom extends StatefulWidget {
  const SliderCustom({
    super.key,
  });

  @override
  State<SliderCustom> createState() => _SliderCustomState();
}

class _SliderCustomState extends State<SliderCustom> {
  late double number = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoSlider(
        value: number,
        activeColor: Colors.blue,
        onChanged: (value) {
          setState(() {
            number = value;
          });
        },
        // divisions: 5,
        max: 100,
      ),
    );
  }
}

class CupertinoSwitchCustom extends StatefulWidget {
  const CupertinoSwitchCustom({super.key});

  @override
  State<CupertinoSwitchCustom> createState() => _CupertinoSwitchCustomState();
}

class _CupertinoSwitchCustomState extends State<CupertinoSwitchCustom> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoSwitch(
        value: switchValue,
        activeColor: CupertinoColors.activeBlue,
        onChanged: (bool value) {
          setState(() {
            switchValue = value;
          });
        },
      ),
    );
  }
}
