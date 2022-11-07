import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogDemoPage extends StatefulWidget {
  const DialogDemoPage({Key? key}) : super(key: key);

  @override
  DialogDemoPageState createState() => DialogDemoPageState();
}

class DialogDemoPageState extends State<DialogDemoPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                Dialog介绍
                
                backgroundColor	背景色
                elevation	阴影高度
                insetAnimationDuration	动画时间，默认为 const Duration(milliseconds: 100)
                insetAnimationCurve	动画效果，渐进渐出等等，默认为 Curves.decelerate
                insetPadding	对话框距离屏幕边缘间距，默认为 EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0)
                clipBehavior	超出部分剪切方式，Clip.none
                shape	形状 ShapeBorder
                child	自定义弹框
              """),
            customDialog(),
            const Text("""
                AboutDialog介绍
                
                context	上下文
                applicationName	用程序的名称
                applicationVersion	用程序的版本号
                applicationIcon	用程序的图标
                applicationLegalese	用程序的许可证
                children	子Widget组件集合
              """),
            _aboutDialog(),
            _aboutDialog2(),
            const Text("""
                AlertDialog介绍
                
                title	标题
                titlePadding	标题外间距，默认为 const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                titleTextStyle	标题样式 TextStyle
                content	内容控件
                contentPadding	内容外间距，默认为 const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0)
                contentTextStyle	内容文本样式 TextStyle
                actions	事件子控件组
                actionsPadding	事件子控件间距，默认为 EdgeInsets.zero,
                actionsOverflowDirection	事件过多时，竖向展示顺序，只有正向和反向，默认为 VerticalDirection.down
                actionsOverflowButtonSpacing	事件过多时，竖向展示时，子控件间距
                buttonPadding	actions 中每个按钮边缘填充距离，默认为左右各 8.0
                backgroundColor	背景色
                elevation	阴影高度
                semanticLabel	语义标签
                insetPadding	对话框距离屏幕边缘间距，默认为 EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0)
                clipBehavior	超出部分剪切方式，Clip.none
                shape	形状 ShapeBorder
                scrollable	是否可以滚动，默认为 false
              """),
            _alertDialog(),
            const Text("""
                SimpleDialog介绍
                                
                title	标题
                titlePadding	标题外间距，默认为 const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                titleTextStyle	标题样式 TextStyle
                children	子控件，可以随意自定义
                contentPadding	内容外间距，默认为 const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0)
                backgroundColor	背景色
                elevation	阴影高度
                semanticLabel	语义标签
                shape	形状 ShapeBorder
              """),
            _simpleDialog(),
            const Text("""
                CupertinoAlertDialog介绍
            
                title	标题
                content	内容控件
                actions	事件子控件组
                scrollController	滚动控制器，内容超出高度，content 可以滑动
                actionScrollController	actions 滚动控制器，actions超出高度，actions 可以滑动
                insetAnimationDuration	动画时间，默认为 const Duration(milliseconds: 100)
                insetAnimationCurve	动画效果，渐进渐出等等，默认为 Curves.decelerate
              """),
            _cupertinoAlertDialog(),
            _cupertinoAlertDialog2(),
          ],
        ),
      ),
    );
  }

  _alertDialog() {
    return MaterialButton(
      color: Colors.blue,
      child: Text('点我'),
      onPressed: () {
        showDialog<Null>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('标题'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text('内容 1'),
                    Text('内容 2'),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text('确定'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        ).then((val) {
          print(val);
        });
      },
    );
  }

  _simpleDialog() {
    return MaterialButton(
      color: Colors.blue,
      child: Text('点我'),
      onPressed: () {
        showDialog<Null>(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: Text('选择'),
              children: <Widget>[
                SimpleDialogOption(
                  child: Text('选项 1'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                SimpleDialogOption(
                  child: Text('选项 2'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        ).then((val) {
          print(val);
        });
      },
    );
  }

  customDialog() {
    return MaterialButton(
      color: Colors.blue,
      child: Text('点我'),
      onPressed: () {
        showDialog<Null>(
          context: context,
          builder: (BuildContext context) {
            return _customDialog(context);
          },
        ).then((val) {
          print(val);
        });
      },
    );
  }

  Dialog _customDialog(context) {
    return Dialog(
      backgroundColor: Colors.yellow.shade100,
      // 背景色
      elevation: 4.0,
      // 阴影高度
      insetAnimationDuration: Duration(milliseconds: 300),
      // 动画时间
      insetAnimationCurve: Curves.decelerate,
      // 动画效果
      insetPadding: EdgeInsets.all(30),
      // 弹框距离屏幕边缘距离
      clipBehavior: Clip.none,
      // 剪切方式
      child: Container(
        width: 300,
        height: 300,
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          children: [
            Text("Custom Dialog",
              style: TextStyle(color: Colors.blue, fontSize: 25),),
            Padding(padding: EdgeInsets.all(15)),
            Text("这是一个最简单的自定义 Custom Dialog"),
            Padding(padding: EdgeInsets.all(15),),
            FlatButton(
              onPressed: () {
                // 隐藏弹框
                Navigator.pop(context, 'SimpleDialog - Normal, 我知道了');
              },
              child: Text("我知道了"),
              textColor: Colors.white,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  _aboutDialog() {
    return MaterialButton(
      color: Colors.blue,
      child: Text('点我'),
      onPressed: () {
        showDialog(
            context: context,
            barrierDismissible: true, // user must tap button!
            builder: (BuildContext context) {
              return const AboutDialog(
                applicationName: 'APP名称',
                applicationVersion: '1.0.9527',
                applicationIcon: Icon(Icons.settings_applications),
                // applicationLegalese:'北京',
                children: <Widget>[
                  Text('我是文本'),
                  Text('我是文本'),
                  Text('我是文本'),
                  Text('我是文本'),
                ],
              );
            });
      },
    );
  }

  _aboutDialog2() {
    return MaterialButton(
      color: Colors.blue,
      child: Text('点我'),
      onPressed: () {
        showAboutDialog(
          context: context,
          applicationName: 'APP名称',
          applicationVersion: '1.0.9527',
          applicationIcon: const Icon(Icons.settings_applications),
          // applicationLegalese:'北京',
          children: const <Widget>[
            Text('我是文本'),
            Text('我是文本'),
            Text('我是文本'),
            Text('我是文本'),
          ],
        );
      },
    );
  }

  _cupertinoAlertDialog() {
    return MaterialButton(
      color: Colors.blue,
      child: Text('点我'),
      onPressed: () {
        showDialog(
            context: context,
            barrierDismissible: true, // user must tap button!
            builder: (BuildContext context) {
              return CupertinoAlertDialog(
                title: Text('确认删除'),
                content: Text('\n这个是个提示内容 content'),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: Text('确认'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });
      },
    );
  }

  _cupertinoAlertDialog2() {
    return MaterialButton(
      color: Colors.blue,
      child: Text('点我'),
      onPressed: () {
        showCupertinoDialog(
          context: context,
          builder: (context) {
            return CupertinoAlertDialog(
              title: Text('请评价'),
              content: Text('\n我们很重视您的评价！'),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: Text('非常好'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoDialogAction(
                  child: Text('一般'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoDialogAction(
                  child: Text('非常差'),
                  isDestructiveAction: true,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

}
