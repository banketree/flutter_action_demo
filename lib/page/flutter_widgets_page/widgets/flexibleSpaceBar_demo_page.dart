// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class FlexibleSpaceBarDemoPage extends StatefulWidget {
  const FlexibleSpaceBarDemoPage({Key? key}) : super(key: key);

  @override
  FlexibleSpaceBarDemoPageState createState() =>
      FlexibleSpaceBarDemoPageState();
}

class FlexibleSpaceBarDemoPageState extends State<FlexibleSpaceBarDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return flexibleSpaceBar();
  }

  flexibleSpaceBar() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text('FlexibleSpaceBar Demo'),
            background: Image.network(
              'http://img.haote.com/upload/20180918/2018091815372344164.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Text(
            """
              FlexibleSpaceBar中有一个非常重要的属性就是stretchModes，此参数控制拉伸区域的滚动特性：
              StretchMode.zoomBackground- >背景小部件将展开以填充额外的空间。
              StretchMode.blurBackground- >使用[ImageFilter.blur]效果，背景将模糊。
              StretchMode.fadeTitle- >随着用户过度滚动，标题将消失。
              使用stretchModes属性需要开始stretch模式，用法如下：
              
              SliverAppBar(
                pinned: true,
                expandedHeight: 200.0,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(
                  stretchModes: [StretchMode.zoomBackground],
                  ...
              )
              stretchModes为一个数组，3种模式可以组合使用，也可以单独使用，效果如下：
              使用StretchMode.zoomBackground和StretchMode.blurBackground:
              
              FlexibleSpaceBar(
                stretchModes: [StretchMode.zoomBackground,StretchMode.blurBackground],
                ...
              )
               
              我们还可以通过stretchTriggerOffset 和onStretchTrigger监听拉伸事件，用法如下：
              
              SliverAppBar(
                stretch: true,
                stretchTriggerOffset: 100,
                onStretchTrigger: (){
                  print('onStretchTrigger');
                },
                ...
              )
              
             const SliverAppBar({
              Key key,
              this.leading,  //左侧控件 通常是个返回按钮
                  // 如果没有leading，automaticallyImplyLeading为true，就会默认返回箭头
                  // 如果 没有leading 且为false，空间留给title
                  // 如果有leading，这个参数就无效了 默认为 true
              this.automaticallyImplyLeading = false,
                  //标题 接收 widget 一般为 text
              this.title,
           
                  //右侧控件组
              this.actions,
              this.bottom,//底部控件 例如通常是个 tabBar
           
              this.flexibleSpace, //展开折叠的区域 通常使用 FlexibleSpaceBar
           
              this.expandedHeight,//展开的高度
           
              this.elevation,//阴影
              this.shadowColor,//阴影颜色
              this.forceElevated = false, //是否显示阴影
              this.backgroundColor,//背景颜色
           
              this.brightness,// 应用栏材质的亮度
           
              this.iconTheme,//icon样式
              this.actionsIconTheme,//actionsIcon样式
              this.textTheme, //字体样式
           
              //appbar是否浸入状态栏，为false是为浸入，为true就显示在状态栏的下面
              this.primary = true,
           
              this.centerTitle,//标题是否居中
           
              this.excludeHeaderSemantics = false,
              this.titleSpacing = NavigationToolbar.kMiddleSpacing, //标题间距
           
              this.collapsedHeight,//折叠之后的高度 默认 toolbarHeight 的高度
           
                  //是否应该在用户滚动时变得可见 比如pinned 为false可滑出屏幕 当向下滑时可先滑出 状态栏
              this.floating = false,
           
                  //appBar是否置顶 是否固定在顶部 为true是固定，为false是不固定可滑出屏幕
              this.pinned = false,
                  //当手指放开时，SliverAppBar是否会根据当前的位置展开/收起
              this.snap = false,
           
              //拉伸一般会设置 FlexibleSpaceBar 的stretchModes 使用
              this.stretch = false, //是否可拉伸伸展
              this.stretchTriggerOffset = 100.0, //触发拉伸偏移量
              this.onStretchTrigger,//拉伸监听
              this.shape,
              this.toolbarHeight = kToolbarHeight,
            })
            
            const FlexibleSpaceBar({
              Key key,
              this.title, //标题 同样接收的是Widget 固不局限于Text 此处设置的标题会根据 拉伸量移动 在SliverAppbar 设置的标题 不会移动
              this.background,//背景
              this.centerTitle,//是否居中
              this.titlePadding,//标题Padding
           
              this.collapseMode = CollapseMode.parallax, //折叠模式 = parallax pin none
           
                //StretchMode.zoomBackground- >背景小部件将展开以填充额外的空间。
                // StretchMode.blurBackground- >使用[ImageFilter.blur]效果，背景将模糊。
                // StretchMode.fadeTitle- >随着用户过度滚动，标题将消失。
              this.stretchModes = const <StretchMode>[StretchMode.zoomBackground],
              })
              """,
            style: TextStyle(fontSize: 13),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((content, index) {
            return Container(
              height: 65,
              color: Colors.primaries[index % Colors.primaries.length],
            );
          }, childCount: 50),
        )
      ],
    );
  }
}
