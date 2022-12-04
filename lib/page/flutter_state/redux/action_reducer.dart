import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'count_state.dart';

///第三步 创建Action
/// action 是一个对象 type属性，xxx
enum Actions { increment, decrement }

///建立一个Action基类
class Action {
  final Actions type;

  Action(this.type);
}

//加value
class IncreAction extends Action {
  int value;

  IncreAction(this.value) : super(Actions.increment);
}

///第一步 创建一个ThunkAction类型的异步Action处理函数
ThunkAction asyncIncrement(int value){
  return (Store store) async {
    await Future.delayed(Duration(seconds: 3));
    store.dispatch(IncreAction(value));
  };
}

///第四步 创建一个reducer
CountState increReducer(CountState preState, dynamic action) {
  switch (action.type) {
    case Actions.increment:
      return CountState(preState.count + action.value);
    default:
      return preState;
  }
}

//减value
class DecreAction extends Action {
  int value;

  DecreAction(this.value) : super(Actions.decrement);
}

CountState decreReducer(CountState preState, dynamic action) {
  switch (action.type) {
    case Actions.decrement:
      return CountState(preState.count + action.value);
    default:
      return preState;
  }
}

///合并reducer
final reducers = combineReducers([
  increReducer,
  decreReducer,
]);

