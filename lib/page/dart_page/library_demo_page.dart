import 'package:flutter/material.dart';

class LibraryDemoPage extends StatefulWidget {
  const LibraryDemoPage({Key? key}) : super(key: key);

  @override
  LibraryDemoPageState createState() => LibraryDemoPageState();
}

class LibraryDemoPageState extends State<LibraryDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Library Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
              ///Dart具有一组内置库，这些库对于存储常用的示例程很有用，Dart库由一组类，常量，函数，typedef，属性和异常组成。
              ///Dart脚本可以在标识符前面加上下划线(_)，以将其组件标签为私有，简而言之，Dart库可以限制外部脚本对其内容的访问，这称为封装。
              
              ///dart:io
              ///服务器应用程序的文件，Socket，HTTP和其他I/O支持，默认情况下，该库是导入的。
              ///dart:core
              ///每个Dart程序的内置类型，集合和其他核心函数，该库将自动导入。
              ///dart:math
              ///数学常数和函数，以及一个随机数生成器。
              ///dart:convert
              ///编码器和解码器，用于在不同的数据表示形式(包括JSON和UTF-8)之间进行转换。
              ///dart:typed_data
              ///有效处理固定大小的数据(如，无符号的8字节整数)的列表。
              
              test() async {
                // 3.14159
                print(pi);
                await mathImport.loadLibrary();
                // 2.718281828459045
                print(mathImport.e);
              }
              """),
          ],
        ),
      ),
    );
  }
}