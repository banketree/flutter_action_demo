// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class AppBarDemoPage extends StatefulWidget {
  const AppBarDemoPage({Key? key}) : super(key: key);

  @override
  AppBarDemoPageState createState() => AppBarDemoPageState();
}

class AppBarDemoPageState extends State<AppBarDemoPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar Demo"),
        titleSpacing: 0,
        centerTitle: true,
        leadingWidth: 100,
        // 56
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_sharp),
            onPressed: () {
              Navigator.maybePop(context);
            }),
        actions: getActionWidgets(),
        bottom: getBottom(),
        elevation: 10,
        flexibleSpace: const Text('flexibleSpace'),
        // toolbarOpacity: 20,
        // bottomOpacity: 20,
        backgroundColor: Colors.red,
        brightness: Theme.of(context).primaryColorBrightness,
        iconTheme: Theme.of(context).primaryIconTheme,
        textTheme: Theme.of(context).textTheme,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Image(
              image: AssetImage('assets/images/widgets/app_bar.png'),
            ),
            Text("""
                常用属性介绍
                leading：左侧的action功能
                title：标题文字。
                actions ：右侧的action功能，也可以使用 PopupMenuButton 来显示为三个点，点击后弹出二级菜单，实现功能聚合。
                bottom：通常是 TabBar，Tab 导航栏。
                elevation： 控件的 z 坐标
                flexibleSpace：可以实现一些特殊的效果，该属性通常在 SliverAppBar 中使用，类似于Android中的CollapsingToolbarLayout，可以轻松实现页面头部展开、合并的效果，这个组件后期会讲到。
                backgroundColor： Appbar 的颜色，改值通常和下面的三个属性一起使用。
                brightness： Appbar 的亮度，有白色和黑色两种主题，默认值为 ThemeData.primaryColorBrightness。
                iconTheme ：Appbar 上图标的颜色、透明度、和尺寸信息。默认值为 ThemeData.primaryIconTheme。
                textTheme：Appbar 上的文字样式。
                centerTitle：标题是否居中显示，默认值根据不同的操作系统，显示方式不一样。
                titleSpacing： 标题与其他控件的空隙
                toolbarOpacity： AppBar tool区域透明度
                bottomOpacity： bottom区域透明度
              """),
            // AppBar(
            //   title: const Text("AppBar Demo"),
            //   centerTitle: true,
            // ),
          ],
        ),
      ),
    );
  }

  getActionWidgets() {
    return [
      IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {
            print("关注");
          }),
      PopupMenuButton<String>(
        padding: const EdgeInsets.all(0),
        itemBuilder: (context) => [
          PopupMenuItem<String>(
            value: 'mail',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.mail,
                  color: Colors.black,
                ),
                Text(
                  '邮件邮件邮件',
                  style: TextStyle(fontSize: 18, backgroundColor: Colors.red),
                )
              ],
            ),
          ),
          PopupMenuItem<String>(
            value: 'search',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(Icons.search, color: Colors.black),
                Text(
                  '搜索',
                  style: TextStyle(fontSize: 18, backgroundColor: Colors.red),
                )
              ],
            ),
          ),
        ],
        onSelected: (value) {
          switch (value) {
            case 'mail':
              print('mail');
              break;
            case 'search':
              print("mail");
              break;
          }
        },
      ),
    ];
  }

  final _tabDataList = [
    const _TabBean(title: 'Tab1', icon: Icons.account_balance),
    const _TabBean(title: 'Tab2', icon: Icons.people),
    const _TabBean(title: 'Tab3', icon: Icons.save),
    const _TabBean(title: 'Tab4', icon: Icons.favorite),
    const _TabBean(title: 'Tab5', icon: Icons.home),
    const _TabBean(title: 'Tab6', icon: Icons.audiotrack),
    const _TabBean(title: 'Tab7', icon: Icons.add_shopping_cart),
  ];

  getBottom() {
    return TabBar(
      tabs: _tabDataList
          .map((e) => Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Icon(e.icon), Text(e.title)],
                ),
              ))
          .toList(),
      isScrollable: true,
      controller: TabController(length: _tabDataList.length, vsync: this),
      labelColor: Colors.black,
      indicatorColor: Colors.red,
    );
  }
}

class _TabBean {
  final String title;
  final IconData icon;

  const _TabBean({required this.title, required this.icon});
}
