import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/scaffold_bottomappbar_actionfloatbutton/model/scaffold_state.dart';

class ScaffoldCubit extends Cubit<ScaffoldScreenState> {
  ScaffoldCubit() : super(ScaffoldScreenState.ds());

  void setFloatActionButton(value) {
    emit(state.copyWith(floatActionButton: value));
  }

  void setNotch(value) {
    emit(state.copyWith(notch: value));
  }

  void setFloatingActionButtonLocation(value) {
    emit(state.copyWith(floatingActionButtonLocation: value));
  }
}
