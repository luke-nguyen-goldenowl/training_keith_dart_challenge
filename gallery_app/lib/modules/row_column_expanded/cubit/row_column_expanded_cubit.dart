import 'package:gallery_app/modules/row_column_expanded/model/row_column_expanded_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RowColumnCubit extends Cubit<RowColumnState> {
  RowColumnCubit() : super(RowColumnState());

  // mainAxisSize,
  //     mainAxisAlignment,
  //     crossAxisAlignment,
  //     verticalDirection,
  //     textDirection,
  //     textBaseline,
  //     type

  void setType(String type) {
    emit(state.copyWith(type: type));
  }

  void setMainAxisAlignment(dynamic mainAxisAlignment) {
    emit(state.copyWith(mainAxisAlignment: mainAxisAlignment));
  }

  void setMainAxisSize(dynamic mainAxisSize) {
    emit(state.copyWith(mainAxisSize: mainAxisSize));
  }

  void setCrossAxisAlignment(dynamic crossAxisAlignment) {
    emit(state.copyWith(crossAxisAlignment: crossAxisAlignment));
  }

  void setVerticalDirection(dynamic verticalDirection) {
    emit(state.copyWith(verticalDirection: verticalDirection));
  }

  void setTextDirection(dynamic textDirection) {
    emit(state.copyWith(textDirection: textDirection));
  }

  void setTextBaseline(dynamic textBaseline) {
    emit(state.copyWith(textBaseline: textBaseline));
  }
}
