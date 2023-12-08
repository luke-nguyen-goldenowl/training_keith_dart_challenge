import 'package:english_words/english_words.dart';

class HomeState {
  final WordPair current;
  final List<WordPair> histories;

  HomeState(this.current, this.histories);

  HomeState copyWith({WordPair? current, List<WordPair>? histories}) {
    return HomeState(
      current ?? this.current,
      histories ?? this.histories,
    );
  }
}
