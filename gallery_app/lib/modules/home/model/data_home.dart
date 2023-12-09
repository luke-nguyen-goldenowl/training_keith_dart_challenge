import 'package:flutter/material.dart';

class DataHome {
  final dynamic icon, title, describe, routeName;
  DataHome(
      {required this.icon,
      required this.title,
      required this.describe,
      required this.routeName});
}

List<DataHome> listData = [
  DataHome(
    routeName: "/cupertino",
    title: "Cupertino",
    icon: Icons.phone_android,
    describe:
        'Beautiful and high-fidelity widget for current iOS design of the predefined text styles',
  ),
  DataHome(
    routeName: "/text_richtext_span",
    title: "Typography",
    icon: Icons.text_fields,
    describe: 'All of the predefined text styles',
  ),
  DataHome(
    routeName: "/scaffold",
    title: "Bottom app bar",
    icon: Icons.line_weight,
    describe: 'Bottom application bar',
  ),
  DataHome(
    routeName: "/button",
    title: "Button",
    icon: Icons.table_chart_outlined,
    describe:
        'RaisedButton, FlatButton, DropdownButton, FloatingActionButton, RawMaterialButton IconButton, InkWell,',
  ),
  DataHome(
    routeName: "/",
    title: "List",
    icon: Icons.list,
    describe: 'Scrolling list layout',
  ),
  DataHome(
    routeName: "/custom_box_shape",
    title: "Card",
    icon: Icons.view_carousel_outlined,
    describe: 'Cards with rounded corners and decoration,',
  ),
  DataHome(
    routeName: "/image_title_app_bar",
    title: "List Title",
    icon: Icons.list_outlined,
    describe:
        'A single fixed-height row that typically contains some text as well as a leading or trailing icon,',
  ),
  DataHome(
    routeName: "/container",
    title: "Alert",
    icon: Icons.tab,
    describe: 'Alerts, SnackBar & Tooltip',
  ),
  DataHome(
    routeName: "/text_field",
    title: "Text Field",
    icon: Icons.line_weight_rounded,
    describe: 'Text Field, Text Field Form',
  ),
  DataHome(
    routeName: "/row_column_expanded",
    title: "Row & Column",
    icon: Icons.table_rows_outlined,
    describe:
        'A widget that displays its children in a horizontal and vertical array',
  ),
  DataHome(
    routeName: "/wrap_chip",
    title: "Wrap & Chip",
    icon: Icons.check_circle_outline_sharp,
    describe: 'Wrap & Chip',
  ),
  DataHome(
    routeName: "/stack_align",
    title: "Stack & Align",
    icon: Icons.copy,
    describe:
        'A widget that positions its children relative to the edges of its box',
  ),
];
