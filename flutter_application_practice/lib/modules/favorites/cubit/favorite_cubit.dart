import 'package:flutter_application_practice/modules/favorites/models/favorite_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteState([]));

  void toggleFavorite(var pair) {
    var favorites = state.favorites;
    if (favorites.contains(pair)) {
      favorites.remove(pair);
    } else {
      favorites.add(pair);
    }
    emit(state.copyWith(favorites: favorites));
  }

  void toggleDeleteFavorite(var pair) {
    var favorites = state.favorites;
    favorites.remove(pair);
    emit(state.copyWith(favorites: favorites));
  }
}
