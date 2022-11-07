import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollDemoPage extends StatefulWidget {
  const ScrollDemoPage({Key? key}) : super(key: key);

  @override
  ScrollDemoPageState createState() => ScrollDemoPageState();
}

class ScrollDemoPageState extends State<ScrollDemoPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                ScrollView 介绍
               
                   ///Scrollable属性,用来设置滑动的主轴方向
                this.scrollDirection = Axis.vertical,
                ///是否按照阅读方向相反的方向滑动
                this.reverse = false,
                ///Scrollable属性,控制器用来监听滚动和设置滚动距离
                this.controller,
                ///  指是否使用widget树中默认的PrimaryScrollController；当滑动方向为垂直方向  
                ///（scrollDirection值为Axis.vertical）并且没有指定controller时，primary默认为true
                ///看到 属性介绍primary 如果为真的时候即使他没有足够的高度来实际滚动他也会滚动,
                ///但是要求 controller 为 null ,但是我哦试验了一下没有作用
                bool primary,
                ///Scrollable 属性,完成拖拽后的动画响应
                ScrollPhysics physics,
                ///如果滚动视图不收缩换行，则滚动视图将展开到scrollDirection中允许的最大大小。
                ///如果滚动视图在scrollDirection中具有无限约束，则shrinkWrap必须为true
                /// 貌似这个属性可以解决listview嵌套的问题,但是这样更为消耗性能
                this.shrinkWrap = false,
                this.center,
                ///当scrollOffset = 0，第一个child在viewport的位置（0 <= anchor <= 1.0），
                ///0.0在开始，1.0在尾部，0.5在中间,只有
                this.anchor = 0.0,
                ///缓存区域大小
                this.cacheExtent,
                ///Scrollable 属性 语义子集数
                this.semanticChildCount,
                ///Scrollable  属性,开始响应拖拽的时机
                this.dragStartBehavior = DragStartBehavior.start,
                this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
              """),
            _ScrollView(),
            const Text("""
                BoxScrollView 介绍
               
              """),
            _BoxScrollView(),
            const Text("""
                NestedScrollView 介绍
               
               controller：ScrollController
              scrollDirection = Axis.vertical：滑动方向
              reverse = false：是否倒序
              physics：控制用户滚动视图的交互
              headerSliverBuilder：NestedScrollViewHeaderSliversBuilder
              body：Widget
              """),
            _NestedScrollView(),
            const Text("""
                Scrollable 介绍
               
               ///滚动方向
              this.axisDirection = AxisDirection.down,
              ///滚动控制器和事件监听
              ///在源码中是这样介绍的  ScrollController.initialScrollOffset  控制初始滚动的位置
              ///ScrollController.keepScrollOffset  控制是否应该自动在[PageStorage]中保存并恢复其滚动位      
              ///置
              ///ScrollController.offset 用来读取当前滚动位置
              this.controller,
              ///决定widget 在用户完成拖拽后的动画响应默认情况下会更护不同环境设置不同的变量
              ///ClampingScrollPhysics  android 使用的水波纹效果
              ///BouncingScrollPhysics：iOS下弹性效果  如果android 想要实现这个效果
              ///子布局高度的综合必须大于listview 的实际高度度即viewport
              this.physics,
              ///  用于生成子布局   类似android 中adapter 的getItem 方法
              @required this.viewportBuilder,
              ///
              this.incrementCalculator,
              /// 是否公开在语义数中,便于类似talkback的软件识别
              this.excludeFromSemantics = false,
              ///语义子集数
              this.semanticChildCount,
              ///处理拖动开始行为的方式与时机 
              ///有两个值 DragStartBehavior.start  DragStartBehavior.down 
              ///从字面理解就   start是从拖动开始,down是从触摸事件按下开始
              this.dragStartBehavior = DragStartBehavior.start,
              """),
            _Scrollable(),
            const Text("""
                ScrollbarPainter 介绍
               
              """),
            _ScrollbarPainter(),
            const Text("""
                ScrollbarMetrics 介绍
               
              """),
            _ScrollbarMetrics(),
            const Text("""
                ScrollbarPhysics 介绍
               
              """),
            _ScrollbarPhysics(),
          ],
        ),
      ),
    );
  }

  _BoxScrollView() {
    return Card();
  }

  _NestedScrollView() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          _mySliverAppBar(),
        ];
      },
      body: Container(
        color: Colors.blue,
      ),
    );
  }

  _mySliverAppBar() {
    return SliverAppBar(
      title: Text('NestedScrollView'),
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          "",
          fit: BoxFit.cover,
        ),
        collapseMode: CollapseMode.parallax,
      ),
    );
  }

  _Scrollable() {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        ///类似ios 月结回弹的效果,但是需要列表的长度必须沾满他的viewport
        ///也就是子布局高度的总和必须大于listview 的实际高度度
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext, int) => Container(
            child: RaisedButton(
              child: Center(
                child: Text(
                  "Test",
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
              ),
              onPressed: () {
              },
            )),
        itemCount: 6,
      ),
    );
  }

  _ScrollbarPainter() {
    return Card();
  }

  _ScrollbarMetrics() {
    return Card();
  }

  _ScrollbarPhysics() {
    return Card();
  }

  _ScrollView() {
    return CustomScrollView(
      physics: BouncingScrollPhysics(), //ios风格的上拉出来空白
//        physics: ClampingScrollPhysics(),
      reverse: false,
      slivers: <Widget>[
        SliverAppBar(
          title: Text("scrollview"),
          centerTitle: true,
          leading: Icon(Icons.backspace),
          expandedHeight: 150,
          //AppBar是否固定在顶部
          pinned: true,

          floating: false,
          //
          backgroundColor: Colors.cyanAccent,
          //SliverAppBar背景色
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.fromLTRB(50, 0, 0, 17),
            centerTitle: false,
            title: const Text('flexibleSpace'),
            background: Image.network(
              "http://img8.zol.com.cn/bbs/upload/23765/23764201.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 10, right: 10),
          sliver: SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            Container(
              child: Text("第1行"),
              height: 300,
              color: Colors.red,
            ),
            Container(
              child: Text("第2行"),
              height: 300,
              color: Colors.green,
            ),
            Container(
              child: Text("第3行"),
              height: 300,
              color: Colors.red,
            ),
            Container(
              child: Text("第4行"),
              height: 300,
              color: Colors.green,
            ),
          ])),
        )
      ],
    );
  }
}
