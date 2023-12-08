import 'package:english_words/english_words.dart';

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
