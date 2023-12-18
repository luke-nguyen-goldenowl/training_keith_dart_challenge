import 'package:flutter/material.dart';

class StackAlginState {
  Alignment alignment = Alignment.center;
  TextDirection textDirection = TextDirection.ltr;
  StackFit stackFit = StackFit.loose;
  Clip clip = Clip.hardEdge;

  StackAlginState(
    this.alignment,
    this.textDirection,
    this.stackFit,
    this.clip,
  );

  factory StackAlginState.ds() {
    return StackAlginState(
      Alignment.center,
      TextDirection.ltr,
      StackFit.loose,
      Clip.hardEdge,
    );
  }

  StackAlginState copyWith({dynamic alignment, textDirection, stackFit, clip}) {
    return StackAlginState(
      alignment ?? this.alignment,
      textDirection ?? this.textDirection,
      stackFit ?? this.stackFit,
      clip ?? this.clip,
    );
  }
}
