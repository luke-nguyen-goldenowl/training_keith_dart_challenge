import 'package:english_words/english_words.dart';

class FavoriteState {
  final List<WordPair> favorites;

  FavoriteState(this.favorites);

  FavoriteState copyWith({
    List<WordPair>? favorites,
  }) {
    return FavoriteState(
      favorites ?? this.favorites,
    );
  }
}
