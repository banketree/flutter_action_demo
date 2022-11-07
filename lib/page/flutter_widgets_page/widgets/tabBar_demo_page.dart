// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class TabBarDemoPage extends StatefulWidget {
  const TabBarDemoPage({Key? key}) : super(key: key);

  @override
  TabBarDemoPageState createState() => TabBarDemoPageState();
}

class TabBarDemoPageState extends State<TabBarDemoPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TabBar Demo"),
        centerTitle: true,
        bottom: getBottom(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
                TabBar简介
                水平选项卡，配合TabBarView可以实现选项卡跟页面的切换
                
                TabBar属性
                tabs：显示的标签内容，一般使用Tab对象,也可以自定义
                controller：TabController对象
                isScrollable：是否可滚动（默认false），当false时不可滑动会让每个tab平均分配宽度空间；如果true可滑动，每个tab会自适应宽度，不超过父节点宽度会居中显示
                indicatorColor：指示器颜色
                indicatorWeight：指示器高度
                indicatorPadding：底部指示器的Padding
                indicator：指示器decoration，例如边框等
                indicatorSize：指示器大小计算方式，TabBarIndicatorSize.label跟文字等宽,TabBarIndicatorSize.tab跟每个tab等宽
                labelColor：选中label颜色
                labelStyle：选中label的Style
                labelPadding：每个label的padding值
                unselectedLabelColor：未选中label颜色
                unselectedLabelStyle：未选中label的Style
                
                Tab属性
                text：文本
                icon：图标
                iconMargin：图标的Margin
                child：子节点
                
                TabController属性
                length：Tab的数量
                vsync：TickerProvider，需要混入（with）SingleTickerProviderStateMixin
                例如：
                
                class _TabBarPageState extends State<TabBarPage>
                    with SingleTickerProviderStateMixin 
              """),
          ],
        ),
      ),

    );
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
