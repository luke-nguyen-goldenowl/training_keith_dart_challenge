import 'package:flutter/material.dart';

class ContainerState {
  dynamic border = true,
      borderRadius = 0.0,
      boxShadow = false,
      background = Colors.blue,
      blendMode = BlendMode.src;

  ContainerState();
  ContainerState.parameter(this.background, this.blendMode, this.border,
      this.borderRadius, this.boxShadow);

  ContainerState copyWith(
      {dynamic background, blendMode, border, borderRadius, boxShadow}) {
    return ContainerState.parameter(
        background ?? this.background,
        blendMode ?? this.blendMode,
        border ?? this.border,
        borderRadius ?? this.borderRadius,
        boxShadow ?? this.boxShadow);
  }
}
