import 'package:flutter/material.dart';

class WrapChipState {
  bool elevation, avatar, deleteIcon, spacing, runSpacing;
  dynamic shape;
  String activeChoice, activeInput;

  WrapChipState(
    this.avatar,
    this.deleteIcon,
    this.elevation,
    this.runSpacing,
    this.shape,
    this.spacing,
    this.activeChoice,
    this.activeInput,
  );

  factory WrapChipState.ds() {
    return WrapChipState(
        false, false, false, false, const StadiumBorder(), false, "", "");
  }

  WrapChipState copyWith(
      {avatar,
      deleteIcon,
      elevation,
      runSpacing,
      shape,
      spacing,
      activeChoice,
      activeInput}) {
    return WrapChipState(
      avatar ?? this.avatar,
      deleteIcon ?? this.deleteIcon,
      elevation ?? this.elevation,
      runSpacing ?? this.runSpacing,
      shape ?? this.shape,
      spacing ?? this.spacing,
      activeChoice ?? this.activeChoice,
      activeInput ?? this.activeInput,
    );
  }
}
