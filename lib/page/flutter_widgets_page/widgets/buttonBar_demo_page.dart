// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ButtonBarDemoPage extends StatefulWidget {
  const ButtonBarDemoPage({Key? key}) : super(key: key);

  @override
  ButtonBarDemoPageState createState() => ButtonBarDemoPageState();
}

class ButtonBarDemoPageState extends State<ButtonBarDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ButtonBar Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            const Text("""
                ButtonBar属性	介绍
                alignment	MainAxisAlignment，主轴布局方式
                mainAxisSize	主轴方向占据空间的值，默认为max
                buttonTextTheme	Button的Text主题
                buttonMinWidth	Button最小宽度
                buttonHeight	Button高度
                buttonPadding	Button内边距
                buttonAlignedDropdown	下拉菜单是否与button宽度匹配
                layoutBehavior	默认为 ButtonBarLayoutBehavior.padded，也可以设置为约束 ButtonBarLayoutBehavior.constrained
                overflowDirection	Button排列顺序，默认为 VerticalDirection.down
                overflowButtonSpacing	Button间隔距离
                children	<Widget>[] 子控件集合，建议设置为Button集合
              """),
            buttonBar(),
          ],
        ),
      ),
    );
  }

  ButtonBar buttonBar() {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceBetween,
      children: [
        _raisedButton(),
        _flatButton(),
        Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ],
    );
  }

  RaisedButton _raisedButton() {
    return RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () {},
      child: const Text("RaisedButton"),
    );
  }

  FlatButton _flatButton() {
    return FlatButton(
      onPressed: () {},
      textColor: Colors.white,
      color: Colors.red,
      child: const Text("FlatButton"),
    );
  }
}
