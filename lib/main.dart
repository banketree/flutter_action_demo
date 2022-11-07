import 'package:flutter/material.dart';

import 'page/flutter_widgets_page/flutter_widgets_home_page.dart';
import 'res/app_theme.dart';

void main() {
  //确保组件已初始化
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //任务管理窗口显示的名字
      title: 'Think Demo',
      // UI 主题颜色
      theme: AppTheme.getAppDefault(),
      // 默认界面
      home: const FlutterWidgetsHome(),
      //应用的顶级导航表格，这个是多页面应用用来控制页面跳转的，类似于网页的网址
      //routes: ,
      //第一个显示的路由名字，默认值为 Navigator.defaultRouteName
      //initialRoute: ,
      //生成路由的回调函数，当导航的命名路由的时候，会使用这个来生成界面
      //onGenerateRoute: ,
      //应用 Navigator 的监听器
      //navigatorObservers: [],
      //显示debug 调试线
      debugShowCheckedModeBanner: true,
      //是否显示 纸墨设计 基础布局网格，用来调试 UI 的工具
      debugShowMaterialGrid: false,
      //显示性能标签
      showPerformanceOverlay: false,
      //检查缓存的图像开关，检测在界面重绘时频繁闪烁的图像（调试开关）
      checkerboardRasterCacheImages: false,
      //是否打开Widget边框，类似Android开发者模式中显示布局边界（调试开关）
      showSemanticsDebugger: false,
    );
  }
}
