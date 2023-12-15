import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/wrap_chip/model/wrap_chip_state.dart';

class WrapChipCubit extends Cubit<WrapChipState> {
  WrapChipCubit() : super(WrapChipState());

  void setElevation(value) {
    emit(state.copyWith(elevation: value));
  }

  void setAvatar(value) {
    emit(state.copyWith(avatar: value));
  }

  void setDeleteIcon(value) {
    emit(state.copyWith(deleteIcon: value));
  }

  void setSpacing(value) {
    emit(state.copyWith(spacing: value));
  }

  void setRunSpacing(value) {
    emit(state.copyWith(runSpacing: value));
  }

  void setShape(value) {
    emit(state.copyWith(shape: value));
  }
}
