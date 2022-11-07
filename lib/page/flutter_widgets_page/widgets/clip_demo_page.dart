import 'package:flutter/material.dart';

class ClipDemoPage extends StatefulWidget {
  const ClipDemoPage({Key? key}) : super(key: key);

  @override
  ClipDemoPageState createState() => ClipDemoPageState();
}

class ClipDemoPageState extends State<ClipDemoPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // 头像
    Widget avatar = Image.asset(
      'assets/images/bg.jpeg',
      width: 60,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Clip Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                  // 剪裁 clip
                  
                  // 剪裁Widget    作用
                  // ClipOval      子组件为正方形时剪裁为内贴圆形，为矩形时，剪裁为内贴椭圆
                  // ClipRRect       将子组件剪裁为圆角矩形
                  // ClipRect      剪裁子组件到实际占用的矩形大小（溢出部分剪裁）

              """),
            // 不裁剪
            avatar,
            // 裁剪为圆形
            ClipOval(
              child: avatar,
            ),
            // 裁剪为圆角矩形
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: avatar,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  // 宽度设为原来的一半，另一半会溢出
                  widthFactor: .5,
                ),
                Text(
                  'Hello world!',
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 将溢出部分剪裁
                ClipRect(
                  child: Align(
                    alignment: Alignment.topLeft,
                    widthFactor: .5,
                    child: avatar,
                  ),
                ),
                const Text(
                  'Hello world!',
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              child: ClipRect(
                // 使用自定义的clipper
                clipper: MyClipTest(),
                child: avatar,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// 自定义剪裁
class MyClipTest extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => const Rect.fromLTWH(10.0, 15.0, 40.0, 30.0);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}
