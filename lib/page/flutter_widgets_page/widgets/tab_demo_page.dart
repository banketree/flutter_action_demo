import 'package:flutter/material.dart';

class TabDemoPage extends StatefulWidget {
  const TabDemoPage({Key? key}) : super(key: key);

  @override
  TabDemoPageState createState() => TabDemoPageState();
}

class TabDemoPageState extends State<TabDemoPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _tab();
  }

  _tab() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Demo'),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.directions_car),
              text: "汽车",
            ),
            Tab(
              icon: Icon(Icons.directions_bike),
              text: "自行车",
            ),
            Tab(
              icon: Icon(Icons.directions_boat),
              text: '轮船',
            ),
          ]),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text("""
                Tab介绍
                
                TabBar，是tab面板的切换标题部分
                TabBar可以配置下划线样式，tab字体颜色等,其他更多配置参考文档
                unselectedLabelColor: Colors.black12, // 没有选中时候的颜色
                indicatorColor: Colors.black87, // tab下划线的颜色
                indicatorSize: TabBarIndicatorSize.label, //下划线是整个tab还是tab里面的文字
                indicatorWeight: 2.0, // 下划线的大小
              """),
          ),
          Center(child: Text('自行车')),
          Center(child: Text('轮船')),
        ]),
      ),
    );
    ;
  }
}
