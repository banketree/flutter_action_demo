import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:study_plan_flutter/page/flutter_widgets_page/flutter_widgets_home_page.dart';

import 'dart_page/dart_home_page.dart';
import 'flutter_state/state_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

var dataList = [
  "dart知识",
  "widget知识",
  "state知识",
];

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("奋斗不息"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _buildLayoutList("学习列表", dataList, _onFunctionCall),
            ],
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: '',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _onFunctionCall(BuildContext context, String name) {
    if (name == "dart知识") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DartHomePage()),
      );
    } else if (name == "widget知识") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const FlutterWidgetsHome()),
      );
    } else if (name == "state知识") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const StateHomePage()),
      );
    }
  }

  _buildLayoutList(String headerName, List<String> funList,
      Function(BuildContext context, String name) onCallBack) {
    if (funList.isEmpty) {
      return Container();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            headerName,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, //每行四列
            childAspectRatio: 2.5, //显示区域宽高相等
            //纵轴间距
            mainAxisSpacing: 15.0,
            //横轴间距
            crossAxisSpacing: 1.0,
          ),
          itemCount: funList.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            var funName = funList[index];
            return TextButton(
              onPressed: () {
                onCallBack(context, funName);
              },
              child: Center(
                child: Text(
                  funName,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
