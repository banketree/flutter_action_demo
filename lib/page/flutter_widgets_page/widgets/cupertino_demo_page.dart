// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDemoPage extends StatefulWidget {
  const CupertinoDemoPage({Key? key}) : super(key: key);

  @override
  CupertinoDemoPageState createState() => CupertinoDemoPageState();
}

class CupertinoDemoPageState extends State<CupertinoDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cupertino Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                CupertinoApp	介绍
                
                Material风格基础框架组件，Flutter应用入口配置，例如标题、主题，主界面等。常用的“Scaffold”、“AppBar”、“TabBar”、“BottomNavigationBar”等都需要再此基础组件下实现。
              """),
            _buildCupertinoApp(),
            const Text("""
                CupertinoButton	介绍
                
                child	@required 子控件
                padding	button 内间距
                color	button 颜色
                disabledColor	不可交互时颜色，onPressed == null 时显示，默认为 CupertinoColors.quaternarySystemFill
                minSize	最小可点击大小，默认为 kMinInteractiveDimensionCupertino
                pressedOpacity	按压下去时 button 透明度，默认为 0.4
                borderRadius	圆角，默认为 const BorderRadius.all(Radius.circular(8.0))
                onPressed	@required 点击事件
              """),
            _buildCupertinoButton(),
            const Text("""
                CupertinoColors	介绍
              """),
            _buildCupertinoColors(),
            const Text("""
                CupertinoIcons	介绍
              """),
            _buildCupertinoIcons(),
            const Text("""
                CupertinoNavigationBar	介绍
                
                leading	左侧组件
                automaticallyImplyLeading	是否添加默认 leading，默认为 true。当 leading 为空会默认添加一个返回按钮
                automaticallyImplyMiddle	是否添加默认 middle，默认为 true，如果 middle 为空，且当前 route 为 CupertinoPageRoute，会默认填充 route.title
                previousPageTitle	当 leading 为空，且 automaticallyImplyLeading == true，会出现在默认返回箭头右边的文字
                middle	中间标题组件
                trailing	右侧组件
                border	边框，默认为 _kDefaultNavBarBorder
                backgroundColor	背景色
                brightness	上方电量，事件，Wifi 等状态栏颜色
                padding	内边距，用来调节所有子组件上下左右偏移
                actionsForegroundColor	leading 和 trailing 的默认颜色
                transitionBetweenRoutes	默认为 true
                heroTag	默认为 _defaultHeroTag
              """),
            _buildCupertinoNavigationBar(),
            const Text("""
                CupertinoPageRoute	介绍
              """),
            _buildCupertinoPageRoute(),
            const Text("""
                CupertinoPageScaffold	介绍
                
                navigationBar	导航条，Flutter入门（50）：Flutter 组件之 CupertinoNavigationBar 详解
                backgroundColor	背景色
                resizeToAvoidBottomInset	是否调整自身大小来避免底部嵌入，默认为 true。例如键盘弹起输入时防止输入框和键盘重叠遮挡。
                child	@required 子控件
                CupertinoNavigationBar 属性	介绍
                leading	左侧组件
                automaticallyImplyLeading	是否添加默认 leading，默认为 true。当 leading 为空会默认添加一个返回按钮
                automaticallyImplyMiddle	是否添加默认 middle，默认为 true，如果 middle 为空，且当前 route 为 CupertinoPageRoute，会默认填充 route.title
                previousPageTitle	当 leading 为空，且 automaticallyImplyLeading == true，会出现在默认返回箭头右边的文字
                middle	中间标题组件
                trailing	右侧组件
                border	边框，默认为 _kDefaultNavBarBorder
                backgroundColor	背景色
                brightness	上方电量，事件，Wifi 等状态栏颜色
                padding	内边距，用来调节所有子组件上下左右偏移
                actionsForegroundColor	leading 和 trailing 的默认颜色
                transitionBetweenRoutes	默认为 true
                heroTag	默认为 _defaultHeroTag
              """),
            _buildCupertinoPageScaffold(),
            const Text("""
                CupertinoPicker	介绍
                
                CupertinoPicker是一个ios风格的齿轮滚动的选择器，常用于日期地址选择。
              """),
            _buildCupertinoPicker(),
            const Text("""
                CupertinoPopupSurface	介绍
              """),
            _buildCupertinoPopupSurface(),
            const Text("""
                CupertinoScrollbar	介绍
                
                CupertinoScrollbar是iOS风格的滚动条，如果使用的是Scrollbar，那么在iOS平台它会自动切换为CupertinoScrollbar
              """),
            _buildCupertinoScrollbar(),
            const Text("""
                CupertinoSegmentedControl	介绍
              """),
            _buildCupertinoSegmentedControl(),
            const Text("""
                CupertinoSwitch	介绍
                
                value	@required 当前 switch 的开关
                onChanged	@required
                activeColor	开关打开时，轨道颜色
                trackColor	开关关闭时，轨道颜色
                dragStartBehavior	拖拽效果，默认为 start 更为平滑，为 down 时有明显吸附效果，默认为 DragStartBehavior.start
              """),
            _buildCupertinoSwitch(),
            const Text("""
                CupertinoTabBar	介绍
                
                CupertinoTabBar 是一个 iOS 风格的底部选项卡，等同于 UITabBar，他的子控件 BottomNavigationBarItem 也就相当于 UITabBarItem。
                items	@required 子选项卡
                onTap	点击选项卡回调
                currentIndex	当前选中选项卡下标
                backgroundColor	背景色
                activeColor	选项卡高亮时颜色
                inactiveColor	选项卡未选中时颜色，默认为 _kDefaultTabBarInactiveColor
                iconSize	选项卡图标大小，默认为 30.0
                border	边框
              """),
            _buildCupertinoTabBar(),
            const Text("""
                CupertinoTabScaffold	介绍
                
                tabBar	@required 底部选项卡
                tabBuilder	页面构造器
                controller	控制器，控制默认选项卡被选中
                backgroundColor	背景色，没啥效果
                resizeToAvoidBottomInset	是否调整自身大小来避免底部嵌入，默认为 true。例如键盘弹起输入时防止输入框和键盘重叠遮挡。
                CupertionTabBar 详解看这里 -> Flutter入门（51）：Flutter 组件之 CupertinoTabBar 详解
              """),
            _buildCupertinoTabScaffold(),
            const Text("""
                CupertinoTabView	介绍
                builder	构造器，为不同选项卡提供不同的页面
                navigatorKey	导航 Key
                defaultTitle	默认 title
                routes	路由
                onGenerateRoute	拦截路由
                onUnknownRoute	未知路由
                navigatorObservers	const <NavigatorObserver>[] 为 CupertinoTabView 创建的导航提供观察者 List
              """),
            _buildCupertinoTabView(),
            const Text("""
                CupertinoTimerPicker	介绍
                
                CupertinoTimerPicker 是 iOS风格的时间选择器
              """),
            _buildCupertinoTimerPicker(),
          ],
        ),
      ),
    );
  }

  _buildCupertinoApp() {
    return ButtonBar();
  }

  _buildCupertinoButton() {
    return CupertinoButton(
      // 子控件
      child: Row(
        children: [
          Icon(Icons.radio_button_checked),
          Padding(padding: EdgeInsets.all(5)),
          Text("CupertinoButton"),
        ],
      ),
      color: Colors.red,
      // button 颜色
      padding: EdgeInsets.all(20),
      // button 内边距
      disabledColor: Colors.grey,
      // 不可交互时颜色，onPressed == null 时显示
      // 点击事件
      onPressed: () {
        print("onPressed");
      },
    );
  }

  var isChecked = false;

  _buildCupertinoColors() {
    return CupertinoButton(
        child: Container(
          decoration: BoxDecoration(
              color: isChecked
                  ? CupertinoColors.systemGreen
                  : CupertinoColors.white,
              border: Border.all(
                  color: CupertinoColors.systemGrey,
                  style: BorderStyle.solid,
                  width: 1),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Icon(CupertinoIcons.check_mark,
              size: 100,
              color: isChecked
                  ? CupertinoColors.white
                  : CupertinoColors.systemGrey),
        ),
        onPressed: () {
          setState(() {
            isChecked = !isChecked;
          });
        });
  }

  _buildCupertinoIcons() {
    return Icon(
      ///图标数据
      CupertinoIcons.phone_solid,

      ///图标大小
      size: 18,
    );
  }

  _buildCupertinoNavigationBar() {
    return CupertinoNavigationBar(
      leading: Icon(Icons.arrow_back),
      // 左侧组件
      automaticallyImplyLeading: true,
      // 是否添加默认 leading，默认为 true。当 leading 为空会默认添加一个返回按钮
      automaticallyImplyMiddle: true,
      // 是否添加默认 middle，默认为 true，如果 middle 为空，且当前 route 为 CupertinoPageRoute，会默认填充 route.title
      previousPageTitle: "back",
      // 当 leading 为空，且 automaticallyImplyLeading == true，会出现在默认返回箭头右边的文字
      middle: Text("FMCupertinoNavigationBar"),
      // 中间标题组件
      trailing: Icon(Icons.add),
      // 右侧组件
      // 边框
      border: Border(
        bottom: BorderSide(color: Colors.red, width: 1),
      ),
      backgroundColor: Colors.blue.shade100,
      // 背景色
      brightness: Brightness.light,
      // 上方电量，事件，Wifi 等状态栏颜色
      // 内边距，用来调节所有子组件上下左右偏移
      padding: EdgeInsetsDirectional.only(start: 15, bottom: 0, end: 15),
      // leading 和 trailing 的默认颜色
    );
  }

  _buildCupertinoPageRoute() {
    return ButtonBar();
  }

  _buildCupertinoPageScaffold() {
    return ButtonBar();
  }

  _buildCupertinoPicker() {
    return GestureDetector(
      child: Text("选择性别"),
      onTap: _didClickSelectedGender,
    );
  }

  void _didClickSelectedGender() {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) {
          var controllr = FixedExtentScrollController(initialItem: 0);
          return Container(
            // padding: EdgeInsets.all(10),
            height: 250,
            color: Colors.grey[200],
            child: Column(
              children: <Widget>[
                Container(
                  height: 40,
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("取消"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, controllr.selectedItem);
                        },
                        child: Text("确认"),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                    child: Container(
                      height: 200,
                      child: CupertinoPicker(
                        scrollController: controllr,
                        // diameterRatio: 1.5,
                        // offAxisFraction: 0.2, //轴偏离系数
                        // useMagnifier: true, //使用放大镜
                        // magnification: 1.5, //当前选中item放大倍数
                        itemExtent: 32, //行高
                        // backgroundColor: Colors.amber, //选中器背景色
                        onSelectedItemChanged: (value) {
                        },
                        children: ["1", "1", "1", "1"].map((data) {
                          return Center(
                            child: Text(data),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }).then((value) {
    });
  }

  _buildCupertinoPopupSurface() {
    return ButtonBar();
  }

  _buildCupertinoScrollbar() {
    return ButtonBar();
  }

  //当前选中的索引
  int _currentIndex = 0;
  _buildCupertinoSegmentedControl() {
    return CupertinoSegmentedControl(
      //子标签
      children: <int, Widget>{
        0: Text("全部"),
        1: Text("收入"),
        2: Text("支出 "),
      },
      //当前选中的索引
      groupValue: _currentIndex,
      //点击回调
      onValueChanged: (int index) {
        print("当前选中 $index");
        setState(() {
          _currentIndex = index;
        });
      },
      //选中的背景颜色
      selectedColor: Colors.blue,
      //未选中的背景颜色
      unselectedColor: Colors.white,
      //边框颜色
      borderColor: Colors.blue,
      //按下的颜色
      pressedColor: Colors.blue.withOpacity(0.4),
    );
  }

  bool _switchValue = false;
  _buildCupertinoSwitch() {
    return CupertinoSwitch(
      // 当前 switch 的开关
      value: _switchValue,
      // 点击或者拖拽事件
      onChanged: (value){
        _switchValue = value;

        setState(() {

        });
      },
    );
  }

  _buildCupertinoTabBar() {
    return CupertinoTabBar(
      // 点击回调
      onTap: (index){
        print(index);
      },
      currentIndex: 2, // 设置默认选中位置
      backgroundColor: Colors.lightBlueAccent, // tabbar 背景色
      activeColor: Colors.white, // 图标高亮颜色
      inactiveColor: Colors.grey, // 图标未选中颜色
      iconSize: 25, // 图标大小
      // 边框
      border: Border(
        top: BorderSide(
            width: 3,
            color: Colors.red
        ),
      ),
      items: [
        _bottomNavigationBarItem(Icons.add, "第一个"),
        _bottomNavigationBarItem(Icons.add, "第二个"),
        _bottomNavigationBarItem(Icons.add, "第三个"),
        _bottomNavigationBarItem(Icons.add, "第四个"),
      ],
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(IconData activeIcon, String title){
    return BottomNavigationBarItem(
      icon: Icon(Icons.ac_unit), // 图标
      activeIcon: Icon(activeIcon), // 高亮图标
      label: "$title", // 标题
      backgroundColor: Colors.yellow, // 背景色，仅在 BottomNavigatinBar 中生效，在 iOS 风格组件中无效
    );
  }

  _buildCupertinoTabScaffold() {
    return ButtonBar();
  }

  _buildCupertinoTabView() {
    return ButtonBar();
  }

  _buildCupertinoTimerPicker() {
    return CupertinoTimerPicker(onTimerDurationChanged: (time) {
      print('$time');
    });
  }
}
