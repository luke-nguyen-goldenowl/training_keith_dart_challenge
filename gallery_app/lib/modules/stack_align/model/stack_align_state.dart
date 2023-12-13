import 'package:flutter/material.dart';

class StackAlginState {
  dynamic alignment = Alignment.center,
      textDirection = TextDirection.ltr,
      stackFit = StackFit.loose,
      clip = Clip.hardEdge;

  StackAlginState();
  StackAlginState.parameter(
      this.alignment, this.clip, this.stackFit, this.textDirection);
  StackAlginState copyWith({dynamic alignment, textDirection, stackFit, clip}) {
    return StackAlginState.parameter(
        alignment ?? this.alignment,
        clip ?? this.clip,
        stackFit ?? this.stackFit,
        textDirection ?? this.textDirection);
  }
}
