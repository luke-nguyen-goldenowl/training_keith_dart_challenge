import 'package:flutter/material.dart';
// import 'package:flutter_application_practice/main.dart';

import '../screens/favorites_screen.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu(
      {super.key, required this.screen, required this.selectedIndex});

  final Widget screen;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
              child: NavigationRail(
                extended: constraints.maxWidth >= 600,
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(Icons.home),
                    label: Text('Home'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.favorite),
                    label: Text('Favorites'),
                  ),
                ],
                selectedIndex: selectedIndex,
                onDestinationSelected: (value) {
                  if (value == 1) {
                    Route route = MaterialPageRoute(
                        builder: (context) => FavoritesScreen());
                    Navigator.push(context, route);
                  } else {
                    Navigator.pop(context);
                  }
                },
              ),
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: screen,
              ),
            ),
          ],
        ),
      );
    });
  }
}
