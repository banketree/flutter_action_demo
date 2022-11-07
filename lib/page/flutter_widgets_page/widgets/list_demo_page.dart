import 'package:flutter/material.dart';

class ListViewDemoPage extends StatefulWidget {
  const ListViewDemoPage({Key? key}) : super(key: key);

  @override
  ListViewDemoPageState createState() => ListViewDemoPageState();
}

class ListViewDemoPageState extends State<ListViewDemoPage>
    with TickerProviderStateMixin {
  final data = <Color>[
    Colors.purple[50]!,
    Colors.purple[100]!,
    Colors.purple[200]!,
    Colors.purple[300]!,
    Colors.purple[400]!,
    Colors.purple[500]!,
    Colors.purple[600]!,
    Colors.purple[700]!,
    Colors.purple[800]!,
    Colors.purple[900]!,
  ];

  final GlobalKey<AnimatedListState> _globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                ListView介绍
                
                padding	内边距
                controller	列表滚动控制器
                itemExtent	每条item的高度
                itemCount	列表的总数
                separatorBuilder	每条item的分隔符
                keyboardDismissBehavior	键盘关闭模式
                scrollDirection	滚动方向
                
                ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    thickness: 1,
                    height: 1,
                    color: Colors.orange,
                  ),
                  itemCount: data.length,
                  itemBuilder: (context, index) => _buildItem(data[index]),
                ),
                
                ListView.builder(
                  itemExtent: 100,
                  itemCount: data.length,
                  itemBuilder: (context, index) => _buildItem(data[index]),
                ),
              """),
            _listView(),
            const Text("""
                ListBody介绍
                
                mainAxis = Axis.vertical：滑动方向
                reverse = false：是否倒序
                children = const <Widget>[]：
                
                ListBody创建需要保证在滑动方向上父节点对他没有约束，一般情况与SingleChildScrollView配合使用就行
                ListBody相对于[Column和Row]的优点是可以保证宽度或者高度的一致性
                ListBody相对于ListView呢缺点是没有复用回收机制，但是有点也是有的，用法简单而且嵌套滑动组件不需要shrinkWrap，在少量数据而且布局不复杂的情况下使用还能减少内存开销
              """),
            _listBody(),
            const Text("""
                AnimatedList介绍
                
                itemBuilder 子 Item UI布局构建
                initialItemCount 列表显示的条目 个数
                scrollDirection 滑动方向
                reverse scrollDirection 为 Axis.vertical 时，如果 reverse 为ture ，那么列表内容会自动滑动到底部
                controller 滑动控制器
                physics 滑动效果控制 ，BouncingScrollPhysics 是列表滑动 iOS 的回弹效果；AlwaysScrollableScrollPhysics 是 列表滑动 Android 的水波纹回弹效果；ClampingScrollPhysics 普通的滑动效果；
                shrinkWrap 为true的时候 AnimatedList 会包裹所有的子Item
              """),
            _listAnimatedList(),
          ],
        ),
      ),
    );
  }

  String colorString(Color color) =>
      "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";

  _listView() {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(10),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        children: data
            .map((color) => Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 50,
                  color: color,
                  child: Text(
                    colorString(color),
                    style: const TextStyle(color: Colors.white, shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(.5, .5),
                          blurRadius: 2)
                    ]),
                  ),
                ))
            .toList(),
      ),
    );
  }

  _listBody() {
    return ListBody(mainAxis: Axis.vertical, reverse: false, children: [
      Container(
        height: 100,
        color: Colors.blue[50],
      ),
      Container(
        height: 100,
        color: Colors.blue[100],
      ),
      Container(
        height: 100,
        color: Colors.blue[200],
      ),
      Container(
        height: 100,
        color: Colors.blue[300],
      ),
    ]);
  }

  _listAnimatedList() {
    return SizedBox(
      height: 500,
      child: AnimatedList(
        //关键key
        key: _globalKey,
        //列表个数
        initialItemCount: data.length,
        //每个子Item
        itemBuilder:
            (BuildContext context, int index, Animation<double> animation) {
          return buildSizeTransition(animation, index);
        },
      ),
    );
  }

  SizeTransition buildSizeTransition(Animation<double> animation, int index) {
    //来个动画
    return SizeTransition(
      //动画构建
      sizeFactor: animation,
      //子UI
      child: SizedBox(
        height: 80.0,
        child: Card(
          color: Colors.primaries[index % Colors.primaries.length],
          child: Center(
            child: Text(
              'Item $index ${data[index]}',
            ),
          ),
        ),
      ),
    );
  }
}
