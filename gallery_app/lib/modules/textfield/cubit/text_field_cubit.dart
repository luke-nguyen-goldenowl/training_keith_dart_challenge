import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/textfield/model/text_field_state.dart';

class TextFieldCubit extends Cubit<TextFieldState> {
  TextFieldCubit() : super(TextFieldState.ds());

  void setHint(value) {
    emit(state.copyWith(hint: value));
  }

  void setLabel(value) {
    emit(state.copyWith(label: value));
  }

  void setHelp(value) {
    emit(state.copyWith(help: value));
  }

  void setError(value) {
    emit(state.copyWith(error: value));
  }

  void setCounter(value) {
    emit(state.copyWith(counter: value));
  }

  void setPrefix(value) {
    emit(state.copyWith(prefix: value));
  }

  void setSuffix(value) {
    emit(state.copyWith(suffix: value));
  }

  void setPrefixIcon(value) {
    emit(state.copyWith(prefixIcon: value));
  }
}
