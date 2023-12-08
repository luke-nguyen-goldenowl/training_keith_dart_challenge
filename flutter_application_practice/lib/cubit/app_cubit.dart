import './app_data_state_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:english_words/english_words.dart';

class AppCubit extends Cubit<AppDataState> {
  AppCubit() : super(AppDataState(WordPair.random(), [], []));

  void getNext() {
    var histories = state.histories;
    histories.insert(0, state.current);

    emit(state.copyWith(current: WordPair.random(), histories: histories));
  }

  void toggleFavorite() {
    var favorites = state.favorites;
    if (favorites.contains(state.current)) {
      favorites.remove(state.current);
    } else {
      favorites.add(state.current);
    }
    emit(state.copyWith(favorites: favorites));
  }

  void toggleDeleteFavorite(var pair) {
    var favorites = state.favorites;
    favorites.remove(pair);
    emit(state.copyWith(favorites: favorites));
  }
}
