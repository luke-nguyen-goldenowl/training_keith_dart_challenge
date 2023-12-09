import 'package:flutter/material.dart';
import 'package:gallery_app/modules/button/screens/button_screen.dart';
import 'package:gallery_app/modules/container_decoration/screens/container_decoration_screen.dart';
import 'package:gallery_app/modules/cupertino/screens/cupertino_screen.dart';
import 'package:gallery_app/modules/customboxshape/screens/customboxshape_screen.dart';
import 'package:gallery_app/modules/home/screens/home_screen.dart';
import 'package:gallery_app/modules/image_titile_app_bar/screens/image_title_app_bar_screen.dart';
import 'package:gallery_app/modules/row_column_expanded/screens/row_column_expanded_screen.dart';
import 'package:gallery_app/modules/scaffold_bottomappbar_actionfloatbutton/screens/scaffold_bottomappbar_actionfloatbutton_screen.dart';
import 'package:gallery_app/modules/stack_align/screens/stack_align_screen.dart';
import 'package:gallery_app/modules/text_richtext_widget-span/screens/text_richtext_widget_span_screen.dart';
import 'package:gallery_app/modules/textfield/screens/textfield_screen.dart';
import 'package:gallery_app/modules/wrap_chip/screens/wrap_chip_screen.dart';

Route<dynamic>? onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case "/":
      return MaterialPageRoute(builder: (_) => const MyHomePage());
    case "/button":
      return MaterialPageRoute(builder: (_) => const ButtonScreen());
    case "/container":
      return MaterialPageRoute(
          builder: (_) => const ContainerDecorationScreen());
    case "/cupertino":
      return MaterialPageRoute(builder: (_) => const CupertinoScreen());
    case "/custom_box_shape":
      return MaterialPageRoute(builder: (_) => const CustomBoxShapeScreen());
    case "/image_title_app_bar":
      return MaterialPageRoute(builder: (_) => const ImageTitleAppBarScreen());
    case "/row_column_expanded":
      return MaterialPageRoute(builder: (_) => const RowColumnExpandedScreen());
    case "/scaffold":
      return MaterialPageRoute(builder: (_) => const ScaffoldScreen());
    case "/stack_align":
      return MaterialPageRoute(builder: (_) => const StackAlignScreen());
    case "/text_field":
      return MaterialPageRoute(builder: (_) => const TextFieldScreen());
    case "/wrap_chip":
      return MaterialPageRoute(builder: (_) => const WrapChipScreen());
    case "/text_richtext_span":
      return MaterialPageRoute(builder: (_) => const TextRichTextSpanScreen());
    default:
      break;
  }
  return null;
}
