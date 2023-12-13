import 'package:flutter/material.dart';

class RowColumnState {
  dynamic mainAxisSize = MainAxisSize.max,
      mainAxisAlignment = MainAxisAlignment.start,
      crossAxisAlignment = CrossAxisAlignment.center,
      verticalDirection = VerticalDirection.down,
      textDirection = TextDirection.ltr,
      textBaseline = TextBaseline.ideographic,
      type = 'Row';

  RowColumnState();

  RowColumnState.parameter(
      this.mainAxisSize,
      this.mainAxisAlignment,
      this.crossAxisAlignment,
      this.verticalDirection,
      this.textDirection,
      this.textBaseline,
      this.type);

  RowColumnState copyWith({
    dynamic mainAxisSize,
    mainAxisAlignment,
    crossAxisAlignment,
    verticalDirection,
    textDirection,
    textBaseline,
    type,
  }) {
    return RowColumnState.parameter(
        mainAxisSize ?? this.mainAxisSize,
        mainAxisAlignment ?? this.mainAxisAlignment,
        crossAxisAlignment ?? this.crossAxisAlignment,
        verticalDirection ?? this.verticalDirection,
        textDirection ?? this.textDirection,
        textBaseline ?? this.textBaseline,
        type ?? this.type);
  }
}
