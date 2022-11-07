import 'package:flutter/material.dart';
import 'package:study_plan_flutter/page/flutter_widgets_page/widgets/bottomAppBar_demo_page.dart';
import 'package:study_plan_flutter/page/flutter_widgets_page/widgets/appBar_demo_page.dart';

import 'bottomNavigationBar_demo_page.dart';
import 'box_demo_page.dart';
import 'buttonBar_demo_page.dart';
import 'button_demo_page.dart';
import 'canvas_demo_page.dart';
import 'card_demo_page.dart';
import 'check_demo_page.dart';
import 'chip_demo_page.dart';
import 'clip_demo_page.dart';
import 'container_demo_page.dart';
import 'cupertino_demo_page.dart';
import 'dialog_demo_page.dart';
import 'expansionPanel_demo_page.dart';
import 'flexibleSpaceBar_demo_page.dart';
import 'grid_demo_page.dart';
import 'icon_demo_page.dart';
import 'image_demo_page.dart';
import 'indicator_demo_page.dart';
import 'list_demo_page.dart';
import 'material_demo_page.dart';
import 'padding_demo_page.dart';
import 'picker_demo_page.dart';
import 'popupMenu_demo_page.dart';
import 'scaffold_demo_page.dart';
import 'scroll_demo_page.dart';
import 'slider_demo_page.dart';
import 'snackBar_demo_page.dart';
import 'stack_demo_page.dart';
import 'switch_demo_page.dart';
import 'tabBar_demo_page.dart';
import 'tab_demo_page.dart';
import 'text_demo_page.dart';

var widgetList = [
  "AppBar",
  "BottomAppBar",
  "ButtonBar",
  "FlexibleSpaceBar",
  "SliverAppBar",
  "SnackBar",
  "SnackBarAction",
  "TabBar",
  "Card",
  "Clip",
  "ClipTheme",
  "ClipThemeData",
  "ChoiceChip",
  "FilterChip",
  "InputChip",
  "RawChip",
  "AboutDialog",
  "AlertDialog",
  "Dialog",
  "SimpleDialog",
  "GridPaper",
  "GridTile",
  "GridTileBar",
  "GridVIew",
  "SliverGrid",
  "AnimatedList",
  "ListBody",
  "ListView",
  "CheckedPopupMenuItem",
  "DropdownMenuItem",
  "PopupMenuButton",
  "PopupMenuDivider",
  "PopupMenuEntry",
  "PopupMenuItem",
  "BottomNavigationBar",
  "BottomNavigationBarItem",
  "ExpansionPanel",
  "ExpansionPanelList",
  "ExpansionPanelRadio",
  "CityPicker",
  "DayPicker",
  "MonthPicker",
  "ShowDatePicker",
  "YearPicker",
  "CircularProgressIndicator",
  "LinearProgressIndicator",
  "RefreshProgressIndicator",
  "Scaffold",
  "ScaffoldState",
  "BoxScrollView",
  "CustomScrollView",
  "NestedScrollView",
  "Scrollable",
  "ScrollbarPainter",
  "ScrollbarMetrics",
  "ScrollbarPhysics",
  "ScrollView",
  "Tab",
  "DropdownButton",
  "FlatButton",
  "FloatingActionButton",
  "IconButton",
  "OutlineButton",
  "PopupMenuButton",
  "RaisedButton",
  "RawMaterialButton",
  "CheckBox",
  "CheckBoxListTile",
  "TextField",
  "Radio",
  "RadioListTile",
  "Slider",
  "SliderTheme",
  "SliderThemeData",
  "AnimatedSwitcher",
  "Switch",
  "SwitchListTile",
  "RichText",
  "Text",
  "Align",
  "ConstrainedBox",
  "DecoratedBox",
  "FittedBox",
  "LimitedBox",
  "OverflowBox",
  "RotatedBox",
  "SizeBox",
  "SizedOverflowBox",
  "UnconstrainedBox",
  "Expanded",
  "Center",
  "Column",
  "Container",
  "Row",
  "AnimatedPadding",
  "Padding",
  "SliverPadding",
  "IndexedStack",
  "Stack",
  "Table",
  "Canvas",
  "CircleProgressBarPainter",
  "PainterPath",
  "PainterSketch",
  "Icon",
  "IconData",
  "IconTheme",
  "IconThemeData",
  "ImageIcon",
  "AssetImage",
  "DecorationImage",
  "DecorationImagePainter",
  "ExactAssetImage",
  "FadeInImage",
  "FileImage",
  "Image",
  "MemoryImage",
  "NetworkImage",
  "PaintImage",
  "RawImage",
  "CupertinoApp",
  "CupertinoButton",
  "CupertinoColors",
  "CupertinoIcons",
  "CupertinoNavigationBar",
  "CupertinoPageRoute",
  "CupertinoPageScaffold",
  "CupertinoPicker",
  "CupertinoPopupSurface",
  "CupertinoScrollbar",
  "CupertinoSegmentedControl",
  "CupertinoSwitch",
  "CupertinoTabBar",
  "CupertinoTabScaffold",
  "CupertinoTabView",
  "CupertinoTimerPicker",
  "MaterialAccentColor",
  "MaterialApp",
  "MaterialButton",
  "MaterialColor",
  "MaterialPageRoute",
  "MergeableMaterial",
];

bool handleWidget(BuildContext context, String name) {
  if (name == "AppBar") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AppBarDemoPage()),
    );
    return true;
  } else if (name == "BottomAppBar") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BottomAppBarDemoPage()),
    );
    return true;
  } else if (name == "ButtonBar") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ButtonBarDemoPage()),
    );
    return true;
  } else if (name == "FlexibleSpaceBar" || name == "FlexibleSpaceBar") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FlexibleSpaceBarDemoPage()),
    );
    return true;
  } else if (name == "SnackBar" || name == "SnackBarAction") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SnackBarDemoPage()),
    );
    return true;
  } else if (name == "TabBar") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TabBarDemoPage()),
    );
    return true;
  } else if (name == "Card") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CardDemoPage()),
    );
    return true;
  } else if (name == "Clip" || name == "ClipTheme" || name == "ClipThemeData") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ClipDemoPage()),
    );
    return true;
  } else if (name == "ChoiceChip" ||
      name == "FilterChip" ||
      name == "InputChip" ||
      name == "RawChip") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ChipDemoPage()),
    );
    return true;
  } else if (name == "AboutDialog" ||
      name == "AlertDialog" ||
      name == "Dialog" ||
      name == "SimpleDialog") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const DialogDemoPage()),
    );
    return true;
  } else if (name == "GridPaper" ||
      name == "GridTile" ||
      name == "GridTileBar" ||
      name == "GridVIew") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const GridDemoPage()),
    );
    return true;
  } else if (name == "AnimatedList" ||
      name == "ListBody" ||
      name == "ListView") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ListViewDemoPage()),
    );
    return true;
  } else if (name == "CheckedPopupMenuItem" ||
      name == "DropdownMenuItem" ||
      name == "PopupMenuButton" ||
      name == "PopupMenuDivider" ||
      name == "PopupMenuEntry") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PopupMenuDemoPage()),
    );
    return true;
  } else if (name == "BottomNavigationBar" ||
      name == "BottomNavigationBarItem") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BottomNavigationDemoPage()),
    );
    return true;
  } else if (name == "ExpansionPanel" ||
      name == "ExpansionPanelList" ||
      name == "ExpansionPanelRadio") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ExpansionPanelDemoPage()),
    );
    return true;
  } else if (name == "CityPicker" ||
      name == "DayPicker" ||
      name == "ShowDatePicker" ||
      name == "YearPicker" ||
      name == "MonthPicker") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PickerDemoPage()),
    );
    return true;
  } else if (name == "CircularProgressIndicator" ||
      name == "LinearProgressIndicator" ||
      name == "RefreshProgressIndicator") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const IndicatorDemoPage()),
    );
    return true;
  } else if (name == "Scaffold" ||
      name == "ScaffoldState") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ScaffoldDemoPage()),
    );
    return true;
  } else if (name == "BoxScrollView" ||
      name == "CustomScrollView" ||
      name == "NestedScrollView" ||
      name == "Scrollable" ||
      name == "ScrollbarPainter" ||
      name == "ScrollbarMetrics" ||
      name == "ScrollbarPhysics" ||
      name == "ScrollView") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ScrollDemoPage()),
    );
    return true;
  } else if (name == "Tab") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TabDemoPage()),
    );
    return true;
  } else if (name == "DropdownButton" ||
      name == "FlatButton" ||
      name == "FloatingActionButton" ||
      name == "IconButton" ||
      name == "OutlineButton" ||
      name == "PopupMenuButton" ||
      name == "RaisedButton" ||
      name == "RawMaterialButton") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ButtonDemoPage()),
    );
    return true;
  } else if (name == "CheckBox" ||
      name == "CheckBoxListTile") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CheckDemoPage()),
    );
    return true;
  } else if (name == "CheckBox" ||
      name == "CheckBoxListTile" ||
      name == "TextField" ||
      name == "Radio" ||
      name == "RadioListTile") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CheckDemoPage()),
    );
    return true;
  } else if (name == "Slider" ||
      name == "SliderTheme" ||
      name == "SliderThemeData") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SliderBarDemoPage()),
    );
    return true;
  } else if (name == "AnimatedSwitcher" ||
      name == "Switch" ||
      name == "SwitchListTile") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SwitchBarDemoPage()),
    );
    return true;
  } else if (name == "RichText" ||
      name == "Text" ||
      name == "Align") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TextDemoPage()),
    );
    return true;
  } else if (name == "ConstrainedBox" ||
      name == "DecoratedBox" ||
      name == "FittedBox" ||
      name == "LimitedBox" ||
      name == "OverflowBox" ||
      name == "RotatedBox" ||
      name == "SizeBox" ||
      name == "SizedOverflowBox" ||
      name == "UnconstrainedBox") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BoxDemoPage()),
    );
    return true;
  } else if (name == "Expanded" ||
      name == "Center" ||
      name == "Column" ||
      name == "Container" ||
      name == "Row") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ContainerDemoPage()),
    );
    return true;
  } else if (name == "AnimatedPadding" ||
      name == "Padding" ||
      name == "SliverPadding") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PaddingDemoPage()),
    );
    return true;
  } else if (name == "IndexedStack" ||
      name == "Stack" ||
      name == "Table") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const StackDemoPage()),
    );
    return true;
  } else if (name == "Canvas" ||
      name == "CircleProgressBarPainter" ||
      name == "PainterSketch" ||
      name == "PainterPath") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CanvasDemoPage()),
    );
    return true;
  } else if (name == "Icon" ||
      name == "IconData" ||
      name == "IconTheme" ||
      name == "IconThemeData" ||
      name == "ImageIcon") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const IconDemoPage()),
    );
    return true;
  } else if (name == "AssetImage" ||
      name == "DecorationImage" ||
      name == "DecorationImagePainter" ||
      name == "ExactAssetImage" ||
      name == "FadeInImage" ||
      name == "FileImage" ||
      name == "Image" ||
      name == "MemoryImage" ||
      name == "NetworkImage" ||
      name == "PaintImage" ||
      name == "RawImage") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ImageDemoPage()),
    );
    return true;
  } else if (name == "CupertinoApp" ||
      name == "CupertinoButton" ||
      name == "CupertinoColors" ||
      name == "CupertinoIcons" ||
      name == "CupertinoNavigationBar" ||
      name == "CupertinoPageRoute" ||
      name == "CupertinoPageScaffold" ||
      name == "CupertinoPicker" ||
      name == "CupertinoPopupSurface" ||
      name == "CupertinoScrollbar" ||
      name == "CupertinoSegmentedControl" ||
      name == "CupertinoSwitch" ||
      name == "CupertinoTabBar" ||
      name == "CupertinoTabScaffold" ||
      name == "CupertinoTabView" ||
      name == "CupertinoTimerPicker") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CupertinoDemoPage()),
    );
    return true;
  } else if (name == "MaterialAccentColor" ||
      name == "MaterialApp" ||
      name == "MaterialButton" ||
      name == "MaterialColor" ||
      name == "MaterialPageRoute" ||
      name == "MergeableMaterial" ) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MaterialDemoPage()),
    );
    return true;
  }

  return false;
}
