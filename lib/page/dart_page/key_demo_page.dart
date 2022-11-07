import 'package:flutter/material.dart';

class KeyDemoPage extends StatefulWidget {
  const KeyDemoPage({Key? key}) : super(key: key);

  @override
  KeyDemoPageState createState() => KeyDemoPageState();
}

class KeyDemoPageState extends State<KeyDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Key Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
            Key 关键字
            """),
            Text("""
              //  as 强制转换
              //  assert 断言
              //  deferred 延迟加载 -> loadLibrary
              //  library 声明库
              //  part 1	部分导入
              //  operator 操作符
              //  async	异步声明 和 await 配合使用
              //  sync	同步声明
              //  async*	异步声明 对应的是Stream操作
              //  sync*	同步声明 对应的是Iterable操作
              //  dynamic	动态类型，类型推断
              //  get	定义变量获取
              //  rethrow	捕捉的异常，往上抛出。
              //  typedef 自定义函数
              //  await	等待返回，和async 配套使用
              //  var 动态变量声明
              //  export	导出库
              // 	external 将方法的声明和方法的实现分离
              //  with 多继承，重名方法覆盖
              //  mixin 混入，对方法的加强
              //  yield 循环使用中yield不用暂停，数据以流的方式一次性推送,通过StreamSubscription进行控制
              //  yield* 循环iterable在done为true时的value值。
              //  factory 当你使用factory关键词时，你能控制在使用构造函数时，并不总是创建一个新的该类的对象，比如它可能会从缓存中返回一个已有的实例，或者是返回子类的实例。
              //          1,避免创建过多的重复实例，如果已创建该实例，则从缓存中拿出来。
              //          2,调用子类的构造函数(工厂模式 factory pattern)
              //          3,实现单例模式
              """),
          ],
        ),
      ),
    );
  }
}