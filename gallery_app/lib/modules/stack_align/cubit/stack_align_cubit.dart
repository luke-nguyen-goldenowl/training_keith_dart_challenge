import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/stack_align/model/stack_align_state.dart';

class StackAlignCubit extends Cubit<StackAlginState> {
  StackAlignCubit() : super(StackAlginState.ds());

  void setAlignment(dynamic alignment) {
    emit(state.copyWith(alignment: alignment));
  }

  void setTextDirection(dynamic textDirection) {
    emit(state.copyWith(textDirection: textDirection));
  }

  void setStackFit(dynamic stackFit) {
    emit(state.copyWith(stackFit: stackFit));
  }

  void setClip(dynamic clip) {
    emit(state.copyWith(clip: clip));
  }
}
