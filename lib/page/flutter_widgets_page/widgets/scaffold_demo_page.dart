import 'package:flutter/material.dart';

class ScaffoldDemoPage extends StatefulWidget {
  const ScaffoldDemoPage({Key? key}) : super(key: key);

  @override
  ScaffoldDemoPageState createState() => ScaffoldDemoPageState();
}

class ScaffoldDemoPageState extends State<ScaffoldDemoPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                Scaffold介绍
              
              appBar	页面上方导航条
              body	页面容器
              floatingActionButton	悬浮按钮
              floatingActionButtonLocation	悬浮按钮位置
              floatingActionButtonAnimator	悬浮按钮动画
              persistentFooterButtons	显示在底部导航条上方的一组按钮
              drawer	左侧菜单
              endDrawer	右侧菜单
              bottomNavigationBar	底部导航条
              bottomSheet	一个持久停留在body下方，底部控件上方的控件
              backgroundColor	背景色
              resizeToAvoidBottomPadding	已废弃，resizeToAvoidBottomInset作为替代
              resizeToAvoidBottomInset	默认为 true，防止一些小组件重复
              primary	是否在屏幕顶部显示Appbar, 默认为 true，Appbar 是否向上延伸到状态栏，如电池电量，时间那一栏
              drawerDragStartBehavior	控制 drawer 的一些特性
              extendBody	body 是否延伸到底部控件
              extendBodyBehindAppBar	默认 false，为 true 时，body 会置顶到 appbar 后，如appbar 为半透明色，可以有毛玻璃效果
              drawerScrimColor	侧滑栏拉出来时，用来遮盖主页面的颜色
              drawerEdgeDragWidth	侧滑栏拉出来的宽度
              drawerEnableOpenDragGesture	左侧侧滑栏是否可以滑动
              endDrawerEnableOpenDragGesture	右侧侧滑栏是否可以滑动
              """),
            _scaffold(),
          ],
        ),
      ),
    );
  }

  _scaffold() {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      floatingActionButton: _floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      persistentFooterButtons: _persistentFooterButtons(),
      drawer: const Drawer(),
      endDrawer: const Drawer(),
      bottomNavigationBar: _bottomNavigationBar(),
      bottomSheet: _bottomSheet(),
      backgroundColor: Colors.yellow,
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text('Scaffold'),
      backgroundColor: Colors.lightBlue,
    );
  }

  Container _body() {
    return Container(
      color: Colors.grey,
    );
  }

  FloatingActionButton _floatingActionButton() {
    return FloatingActionButton(
      child: const Text('返回'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  List<Widget> _persistentFooterButtons() {
    return [
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.cyan,
      ),
    ];
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.accessible),
          label: 'accessible',
        ),
      ],
    );
  }

  BottomSheet _bottomSheet() {
    return BottomSheet(
      onClosing: () {},
      builder: (BuildContext context) {
        return Container(
          height: 60,
          color: Colors.cyan,
          alignment: Alignment.center,
          child: const Text('Bottom Sheet'),
        );
      },
    );
  }
}
