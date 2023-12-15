import 'package:flutter/material.dart';

class WrapChipState {
  bool elevation = false,
      avatar = false,
      deleteIcon = false,
      spacing = true,
      runSpacing = false;
  dynamic shape = const StadiumBorder();

  WrapChipState();
  WrapChipState.parameter(this.avatar, this.deleteIcon, this.elevation,
      this.runSpacing, this.shape, this.spacing);

  WrapChipState copyWith(
      {avatar, deleteIcon, elevation, runSpacing, shape, spacing}) {
    return WrapChipState.parameter(
        avatar ?? this.avatar,
        deleteIcon ?? this.deleteIcon,
        elevation ?? this.elevation,
        runSpacing ?? this.runSpacing,
        shape ?? this.shape,
        spacing ?? this.spacing);
  }
}
