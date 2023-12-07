// import 'dart:ui';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

// abstract class AppState {}

class AppDataState {
  final WordPair current;
  final List<WordPair> favorites;
  final List<WordPair> histories;

  AppDataState(this.current, this.favorites, this.histories);

  AppDataState copyWith(
      {WordPair? current,
      List<WordPair>? favorites,
      List<WordPair>? histories}) {
    return AppDataState(
      current ?? this.current,
      favorites ?? this.favorites,
      histories ?? this.histories,
    );
  }
}

class AppCubit extends Cubit<AppDataState> {
  AppCubit() : super(AppDataState(WordPair.random(), [], []));

  void getNext() {
    AppDataState currentState = state;
    var histories = currentState.histories;
    histories.insert(0, currentState.current);

    emit(currentState.copyWith(
        current: WordPair.random(), histories: histories));
  }

  void toggleFavorite() {
    AppDataState currentState = state;
    var favorites = currentState.favorites;
    if (favorites.contains(currentState.current)) {
      favorites.remove(currentState.current);
    } else {
      favorites.add(currentState.current);
    }
    emit(currentState.copyWith(favorites: favorites));
  }

  void toggleDeleteFavorite(var pair) {
    AppDataState currentState = state;
    var favorites = currentState.favorites;
    favorites.remove(pair);
    emit(AppDataState(currentState.current, favorites, currentState.histories));
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerMenu(
      screen: GeneratorPage(),
      selectedIndex: 0,
    );
  }
}

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
                        builder: (context) => FavoritesPage());
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

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appCubit = BlocProvider.of<AppCubit>(context);

    return Center(
        child: BlocBuilder<AppCubit, AppDataState>(builder: (context, state) {
      var pair = state.current;
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: ListView(
              children: [
                for (var pair in state.histories)
                  ListTile(
                    leading: state.favorites.contains(pair)
                        ? Icon(Icons.favorite)
                        : null,
                    title: Text(pair.asCamelCase),
                  )
              ],
            ),
          ),
          SizedBox(height: 10),
          BigCard(pair: pair),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appCubit.toggleFavorite();
                },
                icon: Icon(state.favorites.contains(pair)
                    ? Icons.favorite
                    : Icons.favorite_border),
                label: Text('Like'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appCubit.getNext();
                },
                child: Text('Next'),
              ),
            ],
          ),
        ],
      );
    }));
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!
        .copyWith(color: theme.colorScheme.onPrimary, letterSpacing: 4);
    return Card(
      color: theme.colorScheme.primary,
      elevation: 15,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          pair.asCamelCase,
          style: style,
          semanticsLabel: "${pair.first} ${pair.second}",
        ),
      ),
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appCubit = BlocProvider.of<AppCubit>(context);
    return BlocBuilder<AppCubit, AppDataState>(builder: (context, state) {
      // var pair = state.current;
      if (state.favorites.isEmpty) {
        return Center(
          child: Text("No favorite yet."),
        );
      }
      return ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("You have ${state.favorites.length} favorites: "),
          ),
          for (var pair in state.favorites)
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text(pair.asCamelCase),
              trailing: ElevatedButton.icon(
                onPressed: () {
                  appCubit.toggleDeleteFavorite(pair);
                },
                icon: Icon(Icons.delete_forever_outlined),
                label: Text('Delete'),
              ),
            ),
        ],
      );
    });
  }
}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerMenu(screen: FavoritesScreen(), selectedIndex: 1);
  }
}
