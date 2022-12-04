import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'action_reducer.dart';
import 'count_state.dart';

///第三步 把所有的中间件集合到一起
List<Middleware<CountState>> initMiddleware() {
  List<Middleware<CountState>> middlewares = [];
  List<MiddlewareFactory> factories = [
    LoggerMiddle(),
    ///第三步，一起放入到中间件集合
    ThunkMiddle(),
  ];
  factories.forEach((factory) => middlewares.addAll(factory.generate()));
  return middlewares;
}

///第一步创建一个产生中间件的工厂类，
///利用generate产生中间件
abstract class MiddlewareFactory {
  MiddlewareFactory();

  List<Middleware<CountState>> generate();
}


class ThunkMiddle extends MiddlewareFactory {
  @override
  List<Middleware<CountState>> generate() {
    // TODO: implement generate
    return [
      ///第二步 创建一个异步处理的中间件俩处理我们的Thunk类型的函数
      TypedMiddleware<CountState, ThunkAction>(_doThunk),
    ];
  }

  void _doThunk(
      Store<CountState> store, ThunkAction action, NextDispatcher next) {
    if (action is ThunkAction<CountState>) {
      action(store);
    } else {
      next(action);
    }
  }
}

class LoggerMiddle extends MiddlewareFactory {
  @override
  List<Middleware<CountState>> generate() {
    // TODO: implement generate
    ///第二步 通过new TypedMiddleware的方式创建中间件
    return [
      TypedMiddleware<CountState, IncreAction>(_doIncreLogger),
      TypedMiddleware<CountState, DecreAction>(_doDecreLogger),
    ];
  }

  void _doIncreLogger(
      Store<CountState> store, IncreAction action, NextDispatcher next) {
    next(action);
    debugPrint(
        "store:${store.state.count}, action type ${action.type}, value ${action.value}");
  }

  void _doDecreLogger(
      Store<CountState> store, DecreAction action, NextDispatcher next) {
    next(action);
    debugPrint(
        "store:${store.state.count}, action type ${action.type}, value ${action.value}");
  }
}
