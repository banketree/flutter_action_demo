// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ContainerDemoPage extends StatefulWidget {
  const ContainerDemoPage({Key? key}) : super(key: key);

  @override
  ContainerDemoPageState createState() => ContainerDemoPageState();
}

class ContainerDemoPageState extends State<ContainerDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                Expanded	介绍
                
                Expanded使用与类似与Column，Row，Flex等展示多个组件集合的组件，Expanded包含的组件可以占据剩余的空间。
              """),
            _buildExpanded(),
            const Text("""
                Center	介绍
                
                widthFactor、heightFactor都为空，宽度会尽可能的大，高度则刚好包裹子控件
                widthFactor（heightFactor）不为空，Center的宽度（高度） = 因子*子控件的宽度（高度）
                注意：因子要么为空，要么>=0
              """),
            _buildCenter(),
            const Text("""
                Column	介绍
                
                mainAxisAlignment
                主轴的排序方式MainAxisAlignment.start主轴顶部(默认Y轴左边)MainAxisAlignment.end主轴底部(默认Y轴右边)MainAxisAlignment.center主轴中间(默认Y轴轴中间)MainAxisAlignment.spaceBetween  间距相同  首尾没有间距MainAxisAlignment.spaceAround子元素平均充满MainAxisAlignment.spaceEvenly间距相同 首尾有间距
                crossAxisAlignment
                次轴的排序方式CrossAxisAlignment.start次轴的顶部(默认X轴上部)CrossAxisAlignment.end次轴的底部(默认X轴下部)CrossAxisAlignment.center次轴的中部(默认X轴中间)CrossAxisAlignment.stretch子元素宽充满
                mainAxisSize
                MainAxisSize.min容器空间需要根据内容的大小而撑开的时候用MainAxisSize.max则相反默认就是最大可占用的空间
                textBaseline
                基线对齐方式
                textDirection
                TextDirection.ltr排列方式从左到右（X轴）TextDirection.ltr排列方式从右到左（X轴）
              """),
            const Text("""
                Container	介绍
                - width和height：宽和高。
              - color：背景色，值为一个 Color 对象，不能与 decoration 属性同时设置。
              -margin：外边距，值为一个 EdgeInsets 对象。EdgeInsets 对象即可调用EdgeInsets.all() 方法统一设置左上右下四条边的边距，也可以调用 EdgeInsets.fromLTRB() 分别设置左上右下四条边的边距。
              -padding：内间距，值同 margin。
              -alignment：元素对齐方式
              -decoration：装饰、背景颜色、边框、背景图片、等，不能与 color 属性同时设置
              -child：子组件
              """),
            const Text("""
                Row	介绍
                
                mainAxisAlignment 在flex布局中，子元素应该如何沿着主轴放置,即各个组件的放置的方式， 比如MainAxisAlignment.start 组件都尽量靠近主轴起点
                mainAxisSize 主轴应该占用多少空间 max 即占用最大 min则相反
                crossAxisAlignment 交叉轴的布局方式
                textDirection 组件开始方向 ltr:left-to-right
                verticalDirection 定义了children摆放顺序，默认是down
                textBaseline 对齐文本的水平线
                children 需要拜访的widget们
              """),
            _buildRow(),
          ],
        ),
      ),
    );
  }

  _buildExpanded() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          // Expanded包一下，可以撑满剩余空间
          child: Container(
            color: Colors.amber,
            height: 100,
          ),
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.cyan,
        )
      ],
    );
  }

  _buildCenter() {
    return Column(
      children: [
        Container(
          color: Colors.red,
          child: Center(
            child: Text(
              'Center',
              style: TextStyle(backgroundColor: Colors.amber),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          color: Colors.red,
          child: Center(
            widthFactor: 2,
            child: Text(
              'Center',
              style: TextStyle(backgroundColor: Colors.amber),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          color: Colors.red,
          child: Center(
            heightFactor: 2,
            child: Text(
              'Center',
              style: TextStyle(backgroundColor: Colors.amber),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          color: Colors.red,
          child: Center(
            widthFactor: 2,
            heightFactor: 2,
            child: Text(
              'Center',
              style: TextStyle(backgroundColor: Colors.amber),
            ),
          ),
        ),
      ],
    );
  }

  _buildRow() {
    return Row(
      // 在flex布局中，子元素应该如何沿着主轴放置,即各个组件的放置的方式， 比如MainAxisAlignment.start 组件都尽量靠近主轴起点，
      // 而起点的方向取决去textDirection: TextDirection.rtl,比如right-to-left即都从右边开始
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // 主轴应该占用多少空间 max 即占用最大 min则相反
      mainAxisSize: MainAxisSize.max,
      // 交叉轴的布局方式
      crossAxisAlignment: CrossAxisAlignment.start,
      // 组件开始方向 ltr:left-to-right
      textDirection: TextDirection.ltr,
      // 定义了children摆放顺序，默认是down
      verticalDirection: VerticalDirection.down,
      // 对齐文本的水平线
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Icon(Icons.access_alarm),
        Icon(Icons.access_alarms),
        Icon(Icons.access_time)
      ],
    );
  }
}
