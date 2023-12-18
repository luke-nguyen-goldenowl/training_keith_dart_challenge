import 'package:flutter/material.dart';

class RowColumnState {
  MainAxisSize mainAxisSize;
  MainAxisAlignment mainAxisAlignment;
  CrossAxisAlignment crossAxisAlignment;
  VerticalDirection verticalDirection;
  TextDirection textDirection;
  TextBaseline textBaseline;
  String type;

  RowColumnState(
    this.mainAxisSize,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.verticalDirection,
    this.textDirection,
    this.textBaseline,
    this.type,
  );

  factory RowColumnState.ds() {
    return RowColumnState(
        MainAxisSize.max,
        MainAxisAlignment.start,
        CrossAxisAlignment.center,
        VerticalDirection.down,
        TextDirection.ltr,
        TextBaseline.ideographic,
        'Row');
  }
  // RowColumnState.parameter(
  //   );

  RowColumnState copyWith({
    dynamic mainAxisSize,
    mainAxisAlignment,
    crossAxisAlignment,
    verticalDirection,
    textDirection,
    textBaseline,
    type,
  }) {
    return RowColumnState(
        mainAxisSize ?? this.mainAxisSize,
        mainAxisAlignment ?? this.mainAxisAlignment,
        crossAxisAlignment ?? this.crossAxisAlignment,
        verticalDirection ?? this.verticalDirection,
        textDirection ?? this.textDirection,
        textBaseline ?? this.textBaseline,
        type ?? this.type);
  }
}
