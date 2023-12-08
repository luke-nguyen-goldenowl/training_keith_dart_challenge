import 'package:flutter_application_practice/modules/home/models/home_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:english_words/english_words.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(WordPair.random(), []));

  void getNext() {
    var histories = state.histories;
    histories.insert(0, state.current);

    emit(state.copyWith(current: WordPair.random(), histories: histories));
  }
}
