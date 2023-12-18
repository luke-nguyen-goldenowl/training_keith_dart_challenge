import 'package:flutter/material.dart';
import 'package:gallery_app/configs/routes/routes_name.dart';

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
    routeName: RoutesName.cupertino,
    title: "Cupertino",
    icon: Icons.phone_android,
    describe:
        'Beautiful and high-fidelity widget for current iOS design of the predefined text styles',
  ),
  DataHome(
    routeName: RoutesName.textRichTextSpan,
    title: "Typography",
    icon: Icons.text_fields,
    describe: 'All of the predefined text styles',
  ),
  DataHome(
    routeName: RoutesName.scaffold,
    title: "Bottom app bar",
    icon: Icons.line_weight,
    describe: 'Bottom application bar',
  ),
  DataHome(
    routeName: RoutesName.scaffold,
    title: "Button",
    icon: Icons.table_chart_outlined,
    describe:
        'RaisedButton, FlatButton, DropdownButton, FloatingActionButton, RawMaterialButton IconButton, InkWell,',
  ),
  DataHome(
    routeName: RoutesName.customBoxShape,
    title: "List",
    icon: Icons.list,
    describe: 'Scrolling list layout',
  ),
  DataHome(
    routeName: RoutesName.container,
    title: "Card",
    icon: Icons.view_carousel_outlined,
    describe: 'Cards with rounded corners and decoration,',
  ),
  DataHome(
    routeName: RoutesName.imageTitleAppBar,
    title: "List Title",
    icon: Icons.list_outlined,
    describe:
        'A single fixed-height row that typically contains some text as well as a leading or trailing icon,',
  ),
  DataHome(
    routeName: RoutesName.container,
    title: "Alert",
    icon: Icons.tab,
    describe: 'Alerts, SnackBar & Tooltip',
  ),
  DataHome(
    routeName: RoutesName.textField,
    title: "Text Field",
    icon: Icons.line_weight_rounded,
    describe: 'Text Field, Text Field Form',
  ),
  DataHome(
    routeName: RoutesName.rowColumnExpanded,
    title: "Row & Column",
    icon: Icons.table_rows_outlined,
    describe:
        'A widget that displays its children in a horizontal and vertical array',
  ),
  DataHome(
    routeName: RoutesName.wrapChip,
    title: "Wrap & Chip",
    icon: Icons.check_circle_outline_sharp,
    describe: 'Wrap & Chip',
  ),
  DataHome(
    routeName: RoutesName.stackAlign,
    title: "Stack & Align",
    icon: Icons.copy,
    describe:
        'A widget that positions its children relative to the edges of its box',
  ),
];
