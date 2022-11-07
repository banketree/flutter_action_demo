import 'package:flutter/material.dart';

class SnackBarDemoPage extends StatefulWidget {
  const SnackBarDemoPage({Key? key}) : super(key: key);

  @override
  SnackBarDemoPageState createState() => SnackBarDemoPageState();
}

class SnackBarDemoPageState extends State<SnackBarDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            const Text("""
                SnackBar属性	介绍
                content：内容
                backgroundColor：背景色
                elevation：阴影
                shape：形状
                behavior：位置
                action：SnackBarAction
                duration：显示时长
                onVisible：显示回调
                
                调用方法： Scaffold.of(context).showSnackBar()
                取消方法：Scaffold.of(context).removeCurrentSnackBar()
                需要注意的是这里的context跟BottomSheet一样需要基于Scaffold下的context
                
                 const SnackBarAction({
                  Key? key,
                  this.textColor, //字体颜色 
                  this.disabledTextColor, // 不可用时字体颜色
                  required this.label, // 事件文字
                  required this.onPressed, // 点击事件
                })
              """),
            _raisedButton(context),
          ],
        ),
      ),
    );
  }

  _raisedButton(BuildContext context) {
    return Builder(builder: (context) {
      return RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: () {
          print("_raisedButton");
          _showSnackBar(context);
        },
        child: const Text("RaisedButton"),
      );
    });
  }

  _showSnackBar(BuildContext context) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: const Text('showSnackBar'),
        backgroundColor: Colors.black54,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: '知道了',
          onPressed: () {
            Scaffold.of(context).removeCurrentSnackBar();
          },
        ),
        duration: const Duration(seconds: 5),
        onVisible: () {
          print('onVisible');
        },
      ),
    );
  }
}
