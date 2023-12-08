import 'package:flutter/material.dart';
import '../widgets/drawer_menu.dart';
import '../widgets/favorites_page.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerMenu(screen: FavoritesPage(), selectedIndex: 1);
  }
}
