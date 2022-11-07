// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MaterialDemoPage extends StatefulWidget {
  const MaterialDemoPage({Key? key}) : super(key: key);

  @override
  MaterialDemoPageState createState() => MaterialDemoPageState();
}

class MaterialDemoPageState extends State<MaterialDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            const Text("""
                MaterialApp	介绍
                
                MaterialApp(
                  color: Colors.greenAccent,
                  theme: ThemeData(
                    brightness: Brightness.dark,
                    primaryColor: Colors.red,
                  ),
                  home: Scaffold(
                    appBar: AppBar(
                      title: Text("MaterialApp"),
                    ),
                    body: Center(),
                  ),
                );
                
                navigatorKey	GlobalKey<NavigatorState>	导航键
                scaffoldMessengerKey	GlobalKey<ScaffoldMessengerState>	脚手架键
                home	Widget	主页，应用打开时显示的页面
                routes	Map<String, WidgetBuilder>	应用程序顶级路由表
                initialRoute	String	如果构建了导航器，则会显示第一个路由的名称
                onGenerateRoute	RouteFactory	路由管理拦截器
                onGenerateInitialRoutes	InitialRouteListFactory	生成初始化路由
                onUnknownRoute	RouteFactory	当onGenerateRoute无法生成路由时调用
                navigatorObservers	List<NavigatorObserver>	创建导航器的观察者列表
                builder	TransitionBuilder	在导航器上面插入小部件
                title	String	程序切换时显示的标题
                onGenerateTitle	GenerateAppTitle	程序切换时生成标题字符串
                color	Color	程序切换时应用图标背景颜色（仅安卓有效）
                theme	ThemeData	主题颜色
                darkTheme	ThemeData	暗黑模式主题颜色
                highContrastTheme	ThemeData	系统请求“高对比度”使用的主题
                highContrastDarkTheme	ThemeData	系统请求“高对比度”暗黑模式下使用的主题颜色
                themeMode	ThemeMode	使用哪种模式的主题（默认跟随系统）
                locale	Locale	初始区域设置
                localizationsDelegates	Iterable<LocalizationsDelegate<dynamic>>	本地化代理
                localeListResolutionCallback	LocaleListResolutionCallback	失败或未提供设备的语言环境
                localeResolutionCallback	LocaleResolutionCallback	负责计算语言环境
                supportedLocales	Iterable<Locale>	本地化地区列表
                debugShowMaterialGrid	bool	绘制基线网格叠加层（仅debug模式）
                showPerformanceOverlay	bool	显示性能叠加
                checkerboardRasterCacheImages	bool	打开栅格缓存图像的棋盘格。
                checkerboardOffscreenLayers	bool	打开渲染到屏幕外位图的层的棋盘格。
                showSemanticsDebugger	bool	打开显示可访问性信息的叠加层
                debugShowCheckedModeBanner	bool	调试显示检查模式横幅
                shortcuts	Map<LogicalKeySet, Intent>	应用程序意图的键盘快捷键的默认映射。
                actions	Map<Type, Action<Intent>>	包含和定义用户操作的映射
                restorationScopeId	String	应用程序状态恢复的标识符
                scrollBehavior	ScrollBehavior	可滚动小部件的行为方式
              """),
            _buildMaterialApp(),
            const Text("""
                MaterialAccentColor	介绍
                
                颜色
              """),
            _buildMaterialAccentColor(),
            const Text("""
                MaterialButton	介绍
                
                       ///按钮的背景
       color: Colors.blue,

       child: Text("按钮"),
       ///点击回调函数
       onPressed: (){
         print("按钮点击");
       },
       ///按钮按下时回调 value = true
       ///按钮抬起时回调 value = false
       ///要先于 onPressed
       onHighlightChanged: (value){
         print("按钮点击 Hight value");
       },
       ///定义按钮的基色，以及按钮的最小尺寸
       ///ButtonTextTheme.accent 按钮显示的文本 ThemeData.accentColor(MaterialApp组件中的theme属性配制的)
       ///ButtonTextTheme. normal 按钮显示的文本 黑色或者白色 具体取决于ThemeData.brightness Brightness.dark
       ///ButtonTextTheme.primary 按钮的显示的文本 ThemeData.primaryColr
       textTheme: ButtonTextTheme.primary,
       ///配制按钮上文本的颜色
       textColor: Colors.deepOrange,
       ///未设置点击时的背景颜色
       disabledColor:Colors.yellow ,
       ///按钮点击下的颜色
       highlightColor:Colors.deepPurple,
       ///水波方的颜色
       splashColor: Colors.green,
       ///按钮的阴影
       elevation: 10,
       ///按钮按下时的阴影高度
       highlightElevation: 20,
       ///未设置点击时的阴影高度
       disabledElevation: 5.0,
       ///用来设置按钮的边框的样式
       /// Border.all(color: Colors.deepOrange,width: 2.5,style:  BorderStyle.solid) 四个边框
       /// Border(bottom: BorderSide(color: Colors.deepOrange,width: 2.5,style:  BorderStyle.solid)) 可以分别设置边框
       /// 用来设置底部边框的
       /// UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange,width: 2.5,style:  BorderStyle.solid),borderRadius: BorderRadius.circular(10))
       /// 用来设置圆角矩形边框
       ///   RoundedRectangleBorder(side: BorderSide.none,borderRadius: BorderRadius.all(Radius.circular(20)))
       ///   用来设置圆形边框
       ///   CircleBorder(side: BorderSide(width: 2,color:Colors.red )),
       ///   椭圆形边框 StadiumBorder(side: BorderSide(width: 2,color: Colors.red))
       ///   设置 多边形 BeveledRectangleBorder(side: BorderSide(width: 2,color: Colors.red),borderRadius: BorderRadius.all(Radius.circular(20)))
       ///
       shape: Border.all(color: Colors.deepOrange,width: 2.5,style:  BorderStyle.solid),
       height: 44.0,
       minWidth: 140,
              """),
            _buildMaterialButton(),
            const Text("""
                MaterialColor	介绍
              """),
            _buildMaterialColor(),
            const Text("""
                MaterialPageRoute	介绍
                
                MaterialPageRoute继承自PageRoute类，PageRoute类是一个抽象类，表示占有整个屏幕空间的一个模态路由页面，它还定义了路由构建及切换时过渡动画的相关接口及属性。MaterialPageRoute 是Material组件库提供的组件，它可以针对不同平台，实现与平台页面切换动画风格一致的路由切换动画：
                当打开页面时，新的页面会从屏幕右侧边缘一致滑动到屏幕左边，直到新页面全部显示到屏幕上，而上一个页面则会从当前屏幕滑动到屏幕左侧而消失；当关闭页面时，正好相反，当前页面会从屏幕右侧滑出，同时上一个页面会从屏幕左侧滑入。 

                builder 是一个WidgetBuilder类型的回调函数，它的作用是构建路由页面的具体内容，返回值是一个widget。我们通常要实现此回调，返回新路由的实例。
                settings 包含路由的配置信息，如路由名称、是否初始路由（首页）。
                maintainState：默认情况下，当入栈一个新路由时，原来的路由仍然会被保存在内存中，如果想在路由没用的时候释放其所占用的所有资源，可以设置maintainState为false。
                fullscreenDialog表示新的路由页面是否是一个全屏的模态对话框，在iOS中，如果fullscreenDialog为true，新页面将会从屏幕底部滑入（而不是水平方向）。
              """),
            _buildMaterialPageRoute(),
            const Text("""
                MergeableMaterial	介绍
                
                MergeableMaterial 展示一些MergeableMaterialItem组件，当子组件发生变化时，动画打开或者关闭，MergeableMaterial的父控件需要在主轴方向是一个没有限制的控件，比如SingleChildScrollView、Row、Column等。
                
              """),
            _buildMergeableMaterial(),
          ],
        ),
      ),
    );
  }

   _buildMaterialApp() {
    return ButtonBar();
  }

   _buildMaterialAccentColor() {
    return ButtonBar();
  }

   _buildMaterialButton() {
     return MaterialButton(
       ///按钮的背景
       color: Colors.blue,

       child: Text("按钮"),
       ///点击回调函数
       onPressed: (){
         print("按钮点击");
       },
       ///按钮按下时回调 value = true
       ///按钮抬起时回调 value = false
       ///要先于 onPressed
       onHighlightChanged: (value){
         print("按钮点击 Hight $value");
       },
       ///定义按钮的基色，以及按钮的最小尺寸
       ///ButtonTextTheme.accent 按钮显示的文本 ThemeData.accentColor(MaterialApp组件中的theme属性配制的)
       ///ButtonTextTheme. normal 按钮显示的文本 黑色或者白色 具体取决于ThemeData.brightness Brightness.dark
       ///ButtonTextTheme.primary 按钮的显示的文本 ThemeData.primaryColr
       textTheme: ButtonTextTheme.primary,
       ///配制按钮上文本的颜色
       textColor: Colors.deepOrange,
       ///未设置点击时的背景颜色
       disabledColor:Colors.yellow ,
       ///按钮点击下的颜色
       highlightColor:Colors.deepPurple,
       ///水波方的颜色
       splashColor: Colors.green,
       ///按钮的阴影
       elevation: 10,
       ///按钮按下时的阴影高度
       highlightElevation: 20,
       ///未设置点击时的阴影高度
       disabledElevation: 5.0,
       ///用来设置按钮的边框的样式
       /// Border.all(color: Colors.deepOrange,width: 2.5,style:  BorderStyle.solid) 四个边框
       /// Border(bottom: BorderSide(color: Colors.deepOrange,width: 2.5,style:  BorderStyle.solid)) 可以分别设置边框
       /// 用来设置底部边框的
       /// UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange,width: 2.5,style:  BorderStyle.solid),borderRadius: BorderRadius.circular(10))
       /// 用来设置圆角矩形边框
       ///   RoundedRectangleBorder(side: BorderSide.none,borderRadius: BorderRadius.all(Radius.circular(20)))
       ///   用来设置圆形边框
       ///   CircleBorder(side: BorderSide(width: 2,color:Colors.red )),
       ///   椭圆形边框 StadiumBorder(side: BorderSide(width: 2,color: Colors.red))
       ///   设置 多边形 BeveledRectangleBorder(side: BorderSide(width: 2,color: Colors.red),borderRadius: BorderRadius.all(Radius.circular(20)))
       ///
       shape: Border.all(color: Colors.deepOrange,width: 2.5,style:  BorderStyle.solid),
       height: 44.0,
       minWidth: 140,
     );
  }

   _buildMaterialColor() {
    return ButtonBar();
  }

   _buildMaterialPageRoute() {
    return ButtonBar();
  }

   _buildMergeableMaterial() {
    return MergeableMaterial(
      children: [
        MaterialSlice(
            key: ValueKey(1),
            child: Container(
              height: 45,
              color: Colors.primaries[1 % Colors.primaries.length],
            )),
        MaterialGap(key: ValueKey(2)),
        MaterialSlice(
            key: ValueKey(3),
            child: Container(
              height: 45,
              color: Colors.primaries[1 % Colors.primaries.length],
            )),
        MaterialGap(key: ValueKey(4)),
        MaterialSlice(
            key: ValueKey(5),
            child: Container(
              height: 45,
              color: Colors.primaries[1 % Colors.primaries.length],
            )),
      ],
    );
  }
}
