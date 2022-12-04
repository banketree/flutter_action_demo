import 'dart:ui';

import 'package:flutter/material.dart';

import 'state_presenter.dart';

class StateHomePage extends StatefulWidget {
  const StateHomePage({Key? key}) : super(key: key);

  @override
  StateHomePageState createState() => StateHomePageState();
}

class StateHomePageState extends State<StateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter 状态知识点"),
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
              _buildLayoutList("", stateList, _onFunctionCall),
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

  _onFunctionCall(BuildContext context, String name) =>
      handleState(context, name);

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