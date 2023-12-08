import 'package:flutter/material.dart';
import 'package:gallery_app/widgets/item_list_widget.dart';

const List<Map<String, dynamic>> listData = [
  {
    'title': "Cupertino",
    'icon': Icons.text_fields,
    'describe':
        'Beautiful and high-fidelity widget for current iOS design of the predefined text styles',
  },
  {
    'title': "Bottom app bar",
    'icon': Icons.line_weight,
    'describe': 'Bottom application bar',
  },
  {
    'title': "Button",
    'icon': Icons.table_chart_outlined,
    'describe':
        'RaisedButton, FlatButton, DropdownButton, FloatingActionButton, RawMaterialButton IconButton, InkWell,',
  },
  {
    'title': "List",
    'icon': Icons.list,
    'describe': 'Scrolling list layout',
  },
  {
    'title': "Card",
    'icon': Icons.view_carousel_outlined,
    'describe': 'Cards with rounded corners and decoration,',
  },
  {
    'title': "List Title",
    'icon': Icons.list_outlined,
    'describe':
        'A single fixed-height row that typically contains some text as well as a leading or trailing icon,',
  },
  {
    'title': "Alert",
    'icon': Icons.tab,
    'describe': 'Alerts, SnackBar & Tooltip',
  },
  {
    'title': "Text Field",
    'icon': Icons.line_weight_rounded,
    'describe': 'Text Field, Text Field Form',
  },
  {
    'title': "Row & Column",
    'icon': Icons.table_rows_outlined,
    'describe':
        'A widget that displays its children in a horizontal and vertical array',
  },
  {
    'title': "Wrap & Chip",
    'icon': Icons.check_circle_outline_sharp,
    'describe': 'Wrap & Chip',
  },
  {
    'title': "Stack & Align",
    'icon': Icons.copy,
    'describe':
        'BA widget that positions its children relative to the edges of its box',
  }
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 110, 255),
        title: const Text(
          "My widget",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
        ),
        actions: const [
          Icon(
            Icons.account_circle,
            size: 30,
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: listData
            .map((e) => ItemListWidget(
                title: e['title'], icon: e['icon'], describe: e['describe']))
            .toList(),
      ),
    );
  }
}
