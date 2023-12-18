import 'package:flutter/material.dart';

class ColorItem {
  final Color color;
  final String name;

  ColorItem({required this.color, required this.name});
}

List<ColorItem> colorItems = [
  ColorItem(color: Colors.blue, name: "blue"),
  ColorItem(color: Colors.black, name: "black"),
  ColorItem(color: Colors.red, name: "red"),
  ColorItem(color: Colors.pink, name: "pink"),
  ColorItem(color: Colors.yellow, name: "yellow"),
  ColorItem(color: Colors.brown, name: "brown"),
  ColorItem(color: Colors.tealAccent, name: "tealAccent"),
  ColorItem(color: Colors.purple, name: "purple"),
];
