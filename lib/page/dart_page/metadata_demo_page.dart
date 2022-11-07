import 'package:flutter/material.dart';

class MetaDataDemoPage extends StatefulWidget {
  const MetaDataDemoPage({Key? key}) : super(key: key);

  @override
  MetaDataDemoPageState createState() => MetaDataDemoPageState();
}

class MetaDataDemoPageState extends State<MetaDataDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("MetaData Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
            Dart元数据用于指定带有附加信息的Dart程序。它通常以@符号开头，后跟编译时常量的引用或对常量构造函数的调用。
            """),
            Text("""
            ///Dart元数据用于指定带有附加信息的Dart程序。它通常以@符号开头，后跟编译时常量的引用或对常量构造函数的调用。
            class Student {
              final String studentName;
              final String code;
            
              const Student(this.studentName, this.code);
            }
            
            @Student('studentName', 'rollno')
            void greetHii() {
              print("Hii Welcome to Learnfk");
            }
            
            ///在Dart中，元数据通常在库名称，类，typedef，字段，类型参数，工厂，函数，构造函数，
            ///参数或变量声明之前以及在导入或导出指令之前定义。我们可以在运行时使用反射来检索元数据。
            class Human {
              method() {}
            
              void run() {
                print("Human is running");
              }
            }
            
            class Man extends Human {
              @override
              method() {}
            
              void run() {
                print("Boy is running");
              }
            }
            
            test() {
              Man m = new Man();
              //This will call the child class version of run()
              m.run();
            }
              """),
          ],
        ),
      ),
    );
  }
}