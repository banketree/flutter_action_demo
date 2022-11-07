// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class BoxDemoPage extends StatefulWidget {
  const BoxDemoPage({Key? key}) : super(key: key);

  @override
  BoxDemoPageState createState() => BoxDemoPageState();
}

class BoxDemoPageState extends State<BoxDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Box Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                ConstrainedBox	介绍
                
                constraints 其类型为BoxConstraints，一些基本的约束：
                [RenderBox]布局的不可变布局约束。
                如果且仅当以下所有关系成立时，[Size]才会遵从[BoxConstraints]：
                [minWidth] <= [Size.width] <= [maxWidth]
                [minHeight] <= [Size.height] <= [maxHeight]
                约束本身必须满足这些关系：
                0.0 <= [minWidth] <= [maxWidth] <= [double.infinity]
                0.0 <= [minHeight] <= [maxHeight] <= [double.infinity]
                [double.infinity]是每个约束的合法值(比如想要获取最大的扩展宽度，可以将宽度值设为double.infinity)
              """),
            _buildConstrainedBox(),
            const Text("""
                DecoratedBox	介绍
                
                decoration
                代表将要绘制的装饰，它的类型为Decoration。Decoration是一个抽象类，它定义了一个接口createBoxPainter()，子类的主要职责是需要通过实现它来创建一个画笔，该画笔用于绘制装饰。
                position
                决定在哪里绘制Decoration，它接收DecorationPosition的枚举类型，该枚举类有两个值：
                background：在子组件之后绘制，即背景装饰
                oreground：在子组件之上绘制，即前景。
              """),
            _buildDecoratedBox(),
            const Text("""
                FittedBox	介绍
                
                //BoxFit.none 没有任何填充效果；
                //BoxFit.fill 充满父容器，不超过父容器
                //BoxFit.fitWidth 宽度充满父容器
                //BoxFit.fitHeight 高度充满父容器
                //BoxFit.contain 内容按宽高比等比填充，不超过父容器
                //BoxFit.cover 内容按原始尺寸充满父容器，可能超过父容器
                //BoxFit.scaleDown缩小范围，内容不会超过容器范围
                this.fit = BoxFit.contain,//缩放方式，
                this.alignment = Alignment.center,//对齐方式
              """),
            _buildFittedBox(),
            const Text("""
                LimitedBox	介绍
                
                maxWidth：double.infinity 最大宽度
                maxHeight：double.infinity 最大高度
              """),
            _buildLimitedBox(),
            const Text("""
                OverflowBox	介绍
                
                alignment = Alignment.center：位置
                minWidth：最小宽度，如果子控件宽度小于这个值，按这个值显示
                maxWidth：最大宽度，如果子控件宽度大于这个值，按这个值显示
                minHeight：最小高度，如果子控件高度小于这个值，按这个值显示
                maxHeight：最大高度，如果子控件高度大于这个值，按这个值显示
                child：
                如果OverflowBox不设置约束，那么OverflowBox将使用他父控件的约束；如果OverflowBox的子控件尺寸大于OverflowBox父控件，且OverflowBox的约束也大于OverflowBox父控件，这时候OverflowBox子项就会溢出显示。
                需要注意的是OverflowBox自己是没有宽高的，他的属性都是对子控件的约束而已，OverflowBox的尺寸是由他的父控件约束来决定的。这一点跟SizedOverflowBox是不一样的。SizedOverflowBox我们会在下一节讲，可以跟OverflowBox最个对比。
              """),
            _buildOverflowBox(),
            const Text("""
                RotatedBox	介绍
                
                  //旋转的倍数
                 quarterTurns: 1,
                 //旋转的子Widget
                 child: Container(...),
              """),
            _buildRotatedBox(),
            const Text("""
                SizeBox	介绍
                
                width 指定盒子的宽度，height 指定盒子的高度
              """),
            _buildSizeBox(),
            const Text("""
                SizedOverflowBox	介绍
                
                size：
                alignment = Alignment.center：
                child：
              """),
            _buildSizedOverflowBox(),
            const Text("""
                UnconstrainedBox	介绍
                
                child：
                textDirection：
                alignment = Alignment.center：
                constrainedAxis：横向或者纵向保留约束
              """),
            _buildUnconstrainedBox(),
          ],
        ),
      ),
    );
  }

  _buildConstrainedBox() {
    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
      ),
    );
  }

  _buildDecoratedBox() {
    return DecoratedBox(
      decoration: BoxDecoration(
        // 背景渐变
        gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
        // 3像素圆角
        borderRadius: BorderRadius.circular(3.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(2.0, 2.0),
            blurRadius: 4.0,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
        child: Text('Login', style: TextStyle(color: Colors.white)),
      ),
    );
  }

  _buildFittedBox() {
    return Container(
      width: 200.0,
      height: 200.0,
      margin: EdgeInsets.all(20.0),
      color: Colors.blue,
      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment.bottomRight,
        child: Container(
          decoration: BoxDecoration(color: Colors.red),
          child: Text("BoxFit.none"),
        ),
      ),
    );
  }

  _buildLimitedBox() {
    return Container(
      color: Colors.blue,
      child: UnconstrainedBox(
        child: LimitedBox(
          maxWidth: 100,
          maxHeight: 100,
          child: Text(
              'ddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaaddaa'),
        ),
      ),
    );
  }

  _buildOverflowBox() {
    return Container(
      color: Colors.blue,
      height: 200,
      child: OverflowBox(
        alignment: Alignment.topCenter,
        minWidth: 20,
        maxWidth: 200,
        maxHeight: 400,
        minHeight: 20,
        child: Container(
          width: 50,
          height: 300,
          color: Colors.amber,
        ),
      ),
    );
  }

  _buildRotatedBox() {
    return RotatedBox(
      //旋转的倍数
      quarterTurns: 1,
      //旋转的子Widget
      child: Container(
        child: Text(
          'Hello World!',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        color: Colors.blueGrey,
      ),
    );
  }

  _buildSizeBox() {
    return SizedBox(
      width: 200.0,
      height: 300.0,
      child: Card(child: Text('Hello World!')),
    );
  }

  _buildSizedOverflowBox() {
    return SizedOverflowBox(
      alignment: Alignment.topCenter,
      size: Size(100, 50),
      child: Container(
        width: 50,
        height: 80,
        color: Colors.amber,
      ),
    );
  }

  _buildUnconstrainedBox() {
    return Container(
      width: 300,
      height: 300,
      constraints: BoxConstraints(
        minWidth: 200,
        minHeight: 200,
      ),
      child: UnconstrainedBox(
        // constrainedAxis: Axis.horizontal,
        alignment: Alignment.center,
        child: Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
      ),
    );
  }
}
