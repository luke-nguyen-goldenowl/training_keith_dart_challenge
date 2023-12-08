import 'package:flutter/material.dart';
import 'package:flutter_application_practice/modules/favorites/cubit/favorite_cubit.dart';
import 'package:flutter_application_practice/modules/favorites/models/favorite_state.dart';
import 'package:flutter_application_practice/modules/home/cubit/home_cubit.dart';
import 'package:flutter_application_practice/modules/home/models/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './big_card.dart';

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);
    final favoriteCubit = BlocProvider.of<FavoriteCubit>(context);
    return Center(
        child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      var pair = state.current;
      return BlocBuilder<FavoriteCubit, FavoriteState>(
          builder: (favoriteContext, favoriteState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HistoryList(
              homeState: state,
              favoriteState: favoriteState,
            ),
            SizedBox(height: 10),
            BigCard(pair: pair),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    favoriteCubit.toggleFavorite(pair);
                  },
                  icon: Icon(favoriteState.favorites.contains(pair)
                      ? Icons.favorite
                      : Icons.favorite_border),
                  label: Text('Like'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    homeCubit.getNext();
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        );
      });
    }));
  }
}

class HistoryList extends StatelessWidget {
  const HistoryList({super.key, this.homeState, this.favoriteState});

  final dynamic homeState, favoriteState;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      child: ListView(
        children: [
          for (var pair in homeState.histories)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(favoriteState.favorites.contains(pair)
                    ? Icons.favorite
                    : null),
                Text(
                  pair.asCamelCase,
                  style: TextStyle(fontSize: 20),
                )
              ],
            )
        ],
      ),
    );
  }
}
