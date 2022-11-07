// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SwitchBarDemoPage extends StatefulWidget {
  const SwitchBarDemoPage({Key? key}) : super(key: key);

  @override
  SwitchBarDemoPageState createState() => SwitchBarDemoPageState();
}

class SwitchBarDemoPageState extends State<SwitchBarDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ButtonBar Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                Switch	介绍
                
                value	@required bool，value = true 时为打开状态，false 关闭
                onChanged	点击事件
                activeColor	打开状态下滑块颜色
                activeTrackColor	打开状态下轨道颜色
                inactiveThumbColor	关闭状态下滑块颜色
                inactiveTrackColor	关闭状态下轨道颜色
                activeThumbImage	打开状态下滑块图片
                onActiveThumbImageError	打开状态下滑块图片加载失败回调
                inactiveThumbImage	关闭状态下滑块图片
                onInactiveThumbImageError	关闭状态下滑块图片加载失败回调
                materialTapTargetSize	内边距，默认最小点击区域为 48 * 48，MaterialTapTargetSize.shrinkWrap 为组件实际大小
                dragStartBehavior	启动阻力，默认为 DragStartBehavior.start
                mouseCursor	鼠标光标
                focusColor	聚焦颜色
                hoverColor	悬停颜色
                focusNode	焦点控制，Flutter 组件之 FocusNode 详解
                autofocus	自动聚焦，默认为 false
              """),
            _buildSwitch(),
            const Text("""
                AnimatedSwitcher	介绍
                
                @required this.duration,
                this.switchInCurve = Curves.linear,//入场方式
                this.switchOutCurve = Curves.linear,//出厂方式
                this.transitionBuilder = AnimatedSwitcher.defaultTransitionBuilder,//暂时不懂
                this.layoutBuilder = AnimatedSwitcher.defaultLayoutBuilder,//暂时不懂
              """),
            _buildAnimatedSwitcher(),
            const Text("""
                SwitchListTile	介绍
                
                value：true：开 false：关
                onChanged：变化时回调
                activeColor：打开状态下颜色
                activeTrackColor：打开状态下track颜色
                inactiveThumbColor：关闭状态thumb颜色
                inactiveTrackColor：关闭状态track颜色
                activeThumbImage：打开状态下thumb图片
                inactiveThumbImage：关闭状态thumb图片
                title：主标题
                subtitle：副标题
                dense：是否是listView子节点
                contentPadding：内边距
                secondary：图标
                selected = false：是否选中
                autofocus = false：
                controlAffinity = ListTileControlAffinity.platform： 排列顺序
              """),
            _buildSwitchListTile(),
          ],
        ),
      ),
    );
  }

  var switchValue = false;

  _buildSwitch() {
    return Switch(
        value: switchValue,
        onChanged: (value) {
          switchValue = !switchValue;
          setState(() {});
        });
  }

  _buildAnimatedSwitcher() {
    return AnimatedSwitcher(
      ///动画执行切换时间
      duration: const Duration(milliseconds: 600),

      ///动画构建器 构建指定动画类型
      transitionBuilder: (Widget child, Animation<double> animation) {
        //执行缩放动画
        return ScaleTransition(child: child, scale: animation);
      },

      ///执行动画的子 Widget
      ///只有子 Widget 被切换时才会触发动画
      child: Text(
        '_count',
      ),
    );
  }

  _buildSwitchListTile() {
    return SwitchListTile(
      value: switchValue,
      activeColor: Colors.red,
      activeTrackColor: Colors.green,
      inactiveThumbColor: Colors.deepPurple,
      inactiveTrackColor: Colors.amber,
      // activeThumbImage: AssetImage('images/scan.png'),
      // inactiveThumbImage: NetworkImage(widget._imageUrl),
      title: Text('开启灯光'),
      subtitle: Text('卧室灯'),
      dense: true,
      // contentPadding: EdgeInsets.all(10),
      selected: switchValue,
      secondary: Icon(Icons.people),
      controlAffinity: ListTileControlAffinity.platform,
      onChanged: (value) {
        setState(() {
          switchValue = value;
        });
      },
    );
  }
}
