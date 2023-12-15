import 'package:flutter/material.dart';

class ShapeChipData {
  final dynamic name, shape;
  ShapeChipData({required this.name, required this.shape});
}

List<ShapeChipData> listShapeChip = [
  ShapeChipData(name: "Circle", shape: const CircleBorder()),
  ShapeChipData(
      name: "RoundedRectangle", shape: const RoundedRectangleBorder()),
  ShapeChipData(name: "Stadium", shape: const StadiumBorder()),
  ShapeChipData(
      name: "BeveledRectangle", shape: const BeveledRectangleBorder()),
  ShapeChipData(
      name: "ContinuousRectangle", shape: const ContinuousRectangleBorder()),
];
