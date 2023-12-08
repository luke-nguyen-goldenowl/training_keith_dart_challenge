import 'package:flutter/material.dart';

class DataHome {
  final dynamic icon, title, describe;
  DataHome({required this.icon, required this.title, required this.describe});
}

List<DataHome> listData = [
  DataHome(
    title: "Cupertino",
    icon: Icons.text_fields,
    describe:
        'Beautiful and high-fidelity widget for current iOS design of the predefined text styles',
  ),
  DataHome(
    title: "Bottom app bar",
    icon: Icons.line_weight,
    describe: 'Bottom application bar',
  ),
  DataHome(
    title: "Button",
    icon: Icons.table_chart_outlined,
    describe:
        'RaisedButton, FlatButton, DropdownButton, FloatingActionButton, RawMaterialButton IconButton, InkWell,',
  ),
  DataHome(
    title: "List",
    icon: Icons.list,
    describe: 'Scrolling list layout',
  ),
  DataHome(
    title: "Card",
    icon: Icons.view_carousel_outlined,
    describe: 'Cards with rounded corners and decoration,',
  ),
  DataHome(
    title: "List Title",
    icon: Icons.list_outlined,
    describe:
        'A single fixed-height row that typically contains some text as well as a leading or trailing icon,',
  ),
  DataHome(
    title: "Alert",
    icon: Icons.tab,
    describe: 'Alerts, SnackBar & Tooltip',
  ),
  DataHome(
    title: "Text Field",
    icon: Icons.line_weight_rounded,
    describe: 'Text Field, Text Field Form',
  ),
  DataHome(
    title: "Row & Column",
    icon: Icons.table_rows_outlined,
    describe:
        'A widget that displays its children in a horizontal and vertical array',
  ),
  DataHome(
    title: "Wrap & Chip",
    icon: Icons.check_circle_outline_sharp,
    describe: 'Wrap & Chip',
  ),
  DataHome(
    title: "Stack & Align",
    icon: Icons.copy,
    describe:
        'A widget that positions its children relative to the edges of its box',
  ),
];
