import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/app_cubit.dart';
import '../cubit/app_data_state_cubit.dart';

class FavoritesPage extends StatelessWidget {
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
