import 'package:flutter/material.dart';
import 'package:flutter_application_practice/modules/favorites/cubit/favorite_cubit.dart';
import 'package:flutter_application_practice/modules/favorites/models/favorite_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/app_cubit.dart';
import '../cubit/app_data_state_cubit.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoriteCubit = BlocProvider.of<FavoriteCubit>(context);
    return BlocBuilder<FavoriteCubit, FavoriteState>(builder: (context, state) {
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
                  favoriteCubit.toggleDeleteFavorite(pair);
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
