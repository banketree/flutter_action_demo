// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class PaddingDemoPage extends StatefulWidget {
  const PaddingDemoPage({Key? key}) : super(key: key);

  @override
  PaddingDemoPageState createState() => PaddingDemoPageState();
}

class PaddingDemoPageState extends State<PaddingDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            const Text("""
                Padding	介绍
                
                padding	内间距
                child	子组件
              """),
            _buildPadding(),
            const Text("""
                AnimatedPadding	介绍
                
                required this.padding, // 边距
                this.child,  // 子Widget
                Curve curve = Curves.linear,  // 动画的运动速率
                required Duration duration,  // 动画的持续时间
                VoidCallback? onEnd,   // 动画结束时的回调
              """),
            _buildAnimatedPadding(),
            const Text("""
                SliverPadding	介绍
                
                padding：内边距
                sliver：sliver组件
              """),
            // _buildSliverPadding(),
          ],
        ),
      ),
    );
  }
  double paddingAllValue = 0.0;

   _buildAnimatedPadding() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Padding: $paddingAllValue'),
        AnimatedPadding(
          padding: EdgeInsets.all(paddingAllValue),
          duration: Duration(milliseconds: 1000),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            color: Colors.blue,
          ),
          onEnd: () {
            print("动画结束时的回调");
          },
        ),
        ElevatedButton(
            child: Text('改变padding的值'),
            onPressed: () {
              setState(() {
                paddingAllValue = paddingAllValue == 0.0 ? 50.0 : 0.0;
              });
            }),
      ],
    );
  }

   _buildPadding() {
    return Container(
      height: 150,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.7,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network("https://www.itying.com/images/flutter/1.png",
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network("https://www.itying.com/images/flutter/1.png",
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network("https://www.itying.com/images/flutter/1.png",
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network("https://www.itying.com/images/flutter/1.png",
                  fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }

   _buildSliverPadding() {
    return SliverPadding(
      padding: EdgeInsets.all(10),
      sliver: SliverGrid(
        delegate: _mySliverChildBuilderDelegate(),
        gridDelegate: _mySliverGridDelegateWithFixedCrossAxisCount(),
      ),
    );
  }

  _mySliverChildBuilderDelegate() {
    return SliverChildBuilderDelegate(
          (BuildContext context, int index) {
        return Container(
          height: 80,
          color: Colors.primaries[index % 11],
        );
      },
      childCount: 30,
    );
  }

  _mySliverGridDelegateWithFixedCrossAxisCount() {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 1.5,
    );
  }
}
