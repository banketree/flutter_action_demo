import 'package:flutter/material.dart';

class ErrorDemoPage extends StatefulWidget {
  const ErrorDemoPage({Key? key}) : super(key: key);

  @override
  ErrorDemoPageState createState() => ErrorDemoPageState();
}

class ErrorDemoPageState extends State<ErrorDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Error Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
              /// DefferedLoadException	当延迟的库无法加载时，将引发该错误。
              ///FromatException	是抛出的异常
              ///IntegerDivisionByZeroException	当数字除以零时将引发该错误。
              ///IOEException	它是与输入输出相关的异常的基类。
              ///IsolateSpawnException	当无法创建隔离时将抛出该错误。
              ///Timeout	在等待异步结果时发生调度超时时，将引发此错误。
              """),
          ],
        ),
      ),
    );
  }
}