import 'package:flutter/material.dart';

class ScaffoldScreenState {
  bool floatActionButton = true, notch = true;
  FloatingActionButtonLocation floatingActionButtonLocation;

  ScaffoldScreenState(
      this.floatActionButton, this.floatingActionButtonLocation, this.notch);

  factory ScaffoldScreenState.ds() {
    return ScaffoldScreenState(
        true, FloatingActionButtonLocation.endDocked, true);
  }

  ScaffoldScreenState copyWith({
    floatActionButton,
    floatingActionButtonLocation,
    notch,
  }) {
    return ScaffoldScreenState(
      floatActionButton ?? this.floatActionButton,
      floatingActionButtonLocation ?? this.floatingActionButtonLocation,
      notch ?? notch,
    );
  }
}
