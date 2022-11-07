// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class BottomAppBarDemoPage extends StatefulWidget {
  const BottomAppBarDemoPage({Key? key}) : super(key: key);

  @override
  BottomAppBarDemoPageState createState() => BottomAppBarDemoPageState();
}

class BottomAppBarDemoPageState extends State<BottomAppBarDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomAppBar Demo"),
        centerTitle: true,
      ),
      bottomNavigationBar: getBottomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
              Key? key,
              this.color,//背景色
              this.elevation,//阴影效果
              this.shape,//设置底栏的形状，一般使用这个都是为了和floatingActionButton融合，所以使用的值都是CircularNotchedRectangle(),有缺口的圆形矩形
              this.clipBehavior = Clip.none,
              this.notchMargin = 4.0,//FloatingActionButton和BottomAppBar之间的距离。
              this.child,
              """),
            // AppBar(
            //   title: const Text("AppBar Demo"),
            //   centerTitle: true,
            // ),
          ],
        ),
      ),
    );
  }

  getBottomAppBar() {
    return BottomAppBar(
      //设置底栏的形状，一般使用这个都是为了和floatingActionButton融合，
      //所以使用的值都是CircularNotchedRectangle(),有缺口的圆形矩形。
      shape: const CircularNotchedRectangle(),
      color: Colors.white,
      child: SizedBox(
        height: 49,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                child: const Icon(Icons.home_filled),
                onTap: () {},
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                child: const Icon(Icons.home),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
