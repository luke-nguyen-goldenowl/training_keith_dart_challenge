import 'package:flutter/material.dart';
import '../../../widgets/drawer_menu.dart';
import '../../../widgets/generator_page.dart';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerMenu(
      screen: GeneratorPage(),
      selectedIndex: 0,
    );
  }
}
