import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'action_reducer.dart';
import 'count_state.dart';
import 'first_page.dart';
import 'middleware.dart';

Widget getReduxHome() {
  ///第五步 创建Store
  final store = Store<CountState>(reducers
  ,initialState: CountState.initState()
      ///第四步，把所有的中间件都放到Store里面
    ,middleware: initMiddleware());

  ///第六步 将store放入顶层Widget
  return StoreProvider<CountState>(
    store: store,
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage("Redux演示第一页"),
    ),
  );
}
