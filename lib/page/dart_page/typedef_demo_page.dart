import 'package:flutter/material.dart';

class TypedefDemoPage extends StatefulWidget {
  const TypedefDemoPage({Key? key}) : super(key: key);

  @override
  TypedefDemoPageState createState() => TypedefDemoPageState();
}

class TypedefDemoPageState extends State<TypedefDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Typedef Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
              typedef 或function-type alise (函数类型别名)有助于定义指向内存中可执行代码的指针。简而言之， typedef 可用作引用函数的指针。
              """),
            Text("""
              typedef TestInt = int Function(String args);
              typedef int TestInt2(String args);
              
              main() {
              //词法闭包称为闭包，是一个函数对象，即使在原始范围内使用该函数，也可以在其词法范围内访问变量。换句话说，它提供了从内部函数访问外部函数范围的权限。让我们了解以下示例。
              void innerMain() {
                print("innerMain");
              }
            
              innerMain();
              test();
              test2();
              test3();
            }
              """),
          ],
        ),
      ),
    );
  }
}