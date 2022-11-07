import 'package:flutter/material.dart';

class BottomNavigationDemoPage extends StatefulWidget {
  const BottomNavigationDemoPage({Key? key}) : super(key: key);

  @override
  BottomNavigationDemoPageState createState() =>
      BottomNavigationDemoPageState();
}

class BottomNavigationDemoPageState extends State<BottomNavigationDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigation Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                BottomNavigation属性	介绍
                
                items	必填项，设置各个按钮,
                onTap	点击事件
                currentIndex	当前选中 item 下标
                elevation	控制阴影高度，默认为 8.0
                type	BottomNavigationBarType，默认 fixed，设置为 shifting 时，建议设置选中样式，和为选中样式，提供一个特殊动画
                fixedColor	选中 item 填充色
                backgroundColor	整个 BottomNavigationBar 背景色
                iconSize	图标大小，默认 24.0
                selectedItemColor	选中 title 填充色
                unselectedItemColor	未选中 title 填充色
                selectedIconTheme	选中 item 图标主题
                unselectedIconTheme	未选中 item 图标主题
                selectedFontSize	选中 title 字体大小，默认14.0
                unselectedFontSize	未选中 title 字体大小，默认12.0
                selectedLabelStyle	选中 title 样式 TextStyle
                unselectedLabelStyle	未选中 title 样式 TextStyle
                showSelectedLabels	是否展示选中 title，默认为true
                showUnselectedLabels	是否展示未选中 title，默认为true
                mouseCursor	鼠标悬停，Web 开发可以了解
                
                BottomNavigationBarItem属性	介绍
                
                @required this.icon,
                this.title,
                Widget activeIcon,
                this.backgroundColor,
              """),
            _bottomNavigationBar(),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      items: _items(),
    );
  }

  List<BottomNavigationBarItem> _items() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.title),
        label: 'title',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'favorite',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.backspace),
        label: 'backspace',
      ),
    ];
  }
}