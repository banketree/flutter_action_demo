// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class IconDemoPage extends StatefulWidget {
  const IconDemoPage({Key? key}) : super(key: key);

  @override
  IconDemoPageState createState() => IconDemoPageState();
}

class IconDemoPageState extends State<IconDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icon Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                Icon	介绍
                
                Flutter 的图标类，它有几个衍生的组件：ImageIcon、IconButton 等。
                Icon还可以架加载iconfont（字体图标），这种方式 和图片相比有如下优势：
                
                体积小：可以减小安装包大小。
                矢量的：iconfont 都是矢量图标，放大不会影响其清晰度。
                可以应用文本样式：可以像文本一样改变字体图标的颜色、大小对齐等。
                可以通过 TextSpan 和文本混用。
                因为现在是基本讲解，所哟这里先了解一下有这个功能，具体使用后期会有详细讲解，目前先讲解基本使用方法
              """),
            _buildIcon(),
            const Text("""
                IconData	介绍
              """),
            _buildIconData(),
            const Text("""
                IconTheme	介绍
                
                用于应用栏图标的颜色，不透明度和大小。
              """),
            _buildIconTheme(),
            const Text("""
                IconThemeData	介绍
              """),
            _buildIconThemeData(),
            const Text("""
                ImageIcon	介绍
              """),
            _buildImageIcon(),
          ],
        ),
      ),
    );
  }

  _buildIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.favorite,
          color: Colors.blue,
          size: 24,
        ),
        Icon(
          Icons.audiotrack,
          color: Colors.red,
          size: 24,
        ),
        Icon(
          Icons.people,
          color: Colors.yellow,
          size: 24,
        ),
        IconButton(
          icon: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 24,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  _buildIconData() {
    return Center(
      child: Column(children: <Widget>[
        Icon(
          IconData(
              //code
              0xe8ad,
              //字体
              fontFamily: 'MaterialIcons'),
          color: Colors.redAccent,
        ),
        Icon(
          IconData(
              //code
              61447,
              //字体
              fontFamily: 'FontAwesome'),
          color: Colors.green,
          size: 68.0,
        ),
        Icon(
          IconData(
              //code
              61454,
              //字体
              fontFamily: 'FontAwesome'),
          color: Colors.green,
          size: 68.0,
        ),
      ]),
    );
  }

  _buildIconTheme() {
    return IconTheme(
      data:  IconThemeData(color: Colors.blue, opacity: 3.0,size: 36),
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Icon(Icons.equalizer),
      ),
    );
  }

  _buildIconThemeData() {
    return ButtonBar();
  }

  _buildImageIcon() {
    return ImageIcon(AssetImage('images/test.png'), color: Colors.red,);
  }
}
