import 'dart:ui';

import 'package:flutter/material.dart';

import '../dart_page/dart_presenter.dart';
import 'flutter_widget_home_presenter.dart';
import 'plugins/plugins_presenter.dart';
import 'widgets/widgets_presenter.dart';

class FlutterWidgetsHome extends StatefulWidget {
  const FlutterWidgetsHome({Key? key}) : super(key: key);

  @override
  FlutterWidgetsHomeState createState() => FlutterWidgetsHomeState();
}

class FlutterWidgetsHomeState extends State<FlutterWidgetsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("功能列表"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              _buildLayoutList("Dart 知识点", dartList, _onFunctionCall),
              const SizedBox(
                height: 10,
              ),
              _buildLayoutList("Widget 知识点", widgetList, _onFunctionCall),
              const SizedBox(
                height: 10,
              ),
              _buildLayoutList("Flutter 知识点", flutterList, _onFunctionCall),
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
    if (handleDart(context, name)) {
    } else if (handleWidget(context, name)) {
    } else if (handleFlutter(context, name)) {}
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