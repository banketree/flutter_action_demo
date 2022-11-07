import 'package:flutter/material.dart';

class ButtonDemoPage extends StatefulWidget {
  const ButtonDemoPage({Key? key}) : super(key: key);

  @override
  ButtonDemoPageState createState() => ButtonDemoPageState();
}

class ButtonDemoPageState extends State<ButtonDemoPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                DropdownButton介绍
              """),
            _DropdownButton(),
            const Text("""
                FlatButton介绍
                FlatButton 是一个 google 风格的扁平化按钮
              """),
            _FlatButton(),
            const Text("""
                FloatingActionButton介绍
                child	子控件，通常为 Icon
                tooltip	长按时显示的提示语
                foregroundColor	Icon 与 Text 颜色
                backgroundColor	背景色
                focusColor	聚焦色
                hoverColor	悬浮色
                splashColor	点击时的颜色
                heroTag	标记
                elevation	阴影高度
                focusElevation	聚焦时阴影高度
                hoverElevation	悬浮时阴影高度
                highlightElevation	高亮时阴影高度
                disabledElevation	不可用时阴影高度
                onPressed	点击事件
                mouseCursor	鼠标悬停，Web可以了解
                mini	默认 false，默认按钮为 56 * 56，当mini 为 true 时，默认大小为 40 * 40，边框padding 各为 4，所以布局大小为 48 * 48
                shape	自定义形状
                clipBehavior	边缘裁剪方式，默认为 Clip.none
                focusNode	焦点节点，例如监听 focusNode 可以实现输入框的开始、结束输入
                autofocus	自动聚焦，默认为 false
                materialTapTargetSize	点击区域大小，MaterialTapTargetSize.padded时最小点击区域为48*48，MaterialTapTargetSize.shrinkWrap 时为子组件的实际大小。
                isExtended	默认为 false，当使用 extended 方法时为 true
                extended.icon	设置 Icon（该属性为扩展属性）
                extended.label	设置 label（@requirded，该属性为扩展属性
              """),
            _FloatingActionButton(),
            const Text("""
                IconButton介绍
              """),
            _IconButton(),
            const Text("""
                OutlineButton介绍
              """),
            _OutlineButton(),
            const Text("""
                PopupMenuButton介绍
                
                itemBuilder	@required 必填项，配置弹出菜单的子控件
                initialValue	设置弹出菜单的高亮item
                onSelected	点击菜单控件
                onCanceled	取消点击菜单控件
                tooltip	长按时的小提示
                elevation	阴影距离
                padding	外边距，默认 EdgeInsets.all(8.0),
                child	子控件
                icon	图标
                offset	偏移量，默认 Offset.zero,
                enabled	是否可点击，默认为 true,
                shape	边框设置
                color	颜色
                captureInheritedThemes	默认为 true,
              """),
            _PopupMenuButton(),
            const Text("""
                RaisedButton介绍
                
                Key key,
                @required VoidCallback onPressed,//可以通过这个设置禁用或启用控件
                ValueChanged<bool> onHighlightChanged,//水波纹高亮变化回调,按下返回true,抬起返回false
                ButtonTextTheme textTheme,//按钮的主题
                Color textColor,//文字的颜色
                Color disabledTextColor,//按钮禁用时候文字的颜色
                Color color,//按钮的背景颜色
                Color disabledColor,//按钮被禁用的时候显示的颜色
                Color highlightColor,//点击或者toch控件高亮的时候显示在控件上面，水波纹下面的颜色
                Color splashColor,//水波纹的颜色
                Brightness colorBrightness,//按钮主题高亮
                double elevation,//按钮下面的阴影
                double highlightElevation,//高亮时候的阴影
                double disabledElevation,//按下的时候的阴影
                EdgeInsetsGeometry padding,//设置padding
                ShapeBorder shape,//设置形状
                Clip clipBehavior = Clip.none,//根据此选项，内容将被剪裁（或不剪辑）
                MaterialTapTargetSize materialTapTargetSize,//配置点击目标的最小尺寸
                Duration animationDuration,//定义形状和高程的动画更改的持续时间
                Widget child,//设置子控件
              """),
            _RaisedButton(),
            const Text("""
                RawMaterialButton介绍
                RawMaterialButton即无默认样式的按钮
              """),
            _RawMaterialButton(),
          ],
        ),
      ),
    );
  }

  _DropdownButton() {
    final List<String> itemsList = ["1", "2", "3", "4", "5", "6"];
    return DropdownButton(
      isExpanded: true,
      value: itemsList[0],
      items: itemsList
          .map((String item) => DropdownMenuItem<String>(
        value: item,
        child: Text(item),
      ))
          .toList(),
      onChanged: (value) {},
    );
  }

  _FlatButton() {
    return FlatButton(
      child: const Text("我是一个按钮"),
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () {},
    );
  }

  _FloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.ac_unit),
    );
  }

  _IconButton() {
    return IconButton(
      icon: Icon(Icons.description),
      onPressed: () {
        print('点击了icon ');
      },
    );
  }

  _OutlineButton() {
    return OutlinedButton(
      child: Text(
        '注册',
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
      onPressed: () {},
    );
  }

  _PopupMenuButton() {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: Text("DOTA"),
            value: "dota",
          ),
          PopupMenuItem(
            child: Text("英雄联盟"),
            value: ["盖伦", "皇子", "提莫"],
          ),
          PopupMenuItem(
            child: Text("王者荣耀"),
            value: {"name": "王者荣耀"},
          ),
        ];
      },
    );
  }

  _RaisedButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text("我是一个按钮"),
      textColor: Colors.white,
      onPressed: () {},
    );
  }

  _RawMaterialButton() {
    return RawMaterialButton(
      onPressed: () {},
      child: Text('RawMaterialButton无默认样式的按钮'),
      //文字样式
      textStyle: TextStyle(color: Colors.white),
      //背景色
      fillColor: Colors.orange,
      //高亮时背景色
      highlightColor: Colors.red,
      //阴影
      highlightElevation: 10.0,
      //按下时水波纹颜色
      splashColor: Colors.blue,
      //抗锯齿等级
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.all(20.0),
    );
  }
}
