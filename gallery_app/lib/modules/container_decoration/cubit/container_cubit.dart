import 'package:gallery_app/modules/container_decoration/model/container_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContainerCubit extends Cubit<ContainerState> {
  ContainerCubit() : super(ContainerState());

  void setBorder(bool border) {
    emit(state.copyWith(border: border));
  }

  void setBorderRadius(dynamic radius) {
    emit(state.copyWith(borderRadius: radius));
  }

  void setBackground(dynamic color) {
    emit(state.copyWith(background: color));
  }

  void setBoxShadow(bool shadow) {
    emit(state.copyWith(boxShadow: shadow));
  }

  void setBlendMode(dynamic blendMode) {
    emit(state.copyWith(blendMode: blendMode));
  }
}
