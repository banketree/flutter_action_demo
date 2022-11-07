import 'package:flutter/material.dart';

class SetDemoPage extends StatefulWidget {
  const SetDemoPage({Key? key}) : super(key: key);

  @override
  SetDemoPageState createState() => SetDemoPageState();
}

class SetDemoPageState extends State<SetDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Set Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
           Set是相同类型的不同值的无序集合。 Set不允许存储重复值。该集合必须包含唯一值。
            """),
            Text("""
              //Dart提供了两种方法来声明/初始化一个空集。可以使用类型参数后面的{}大括号来声明集合，也可以使用大括号{}声明变量类型Set.
              var temp1 = <String>{};
              Set<String> temp2 = {};
              var names = <String>{"James","Ricky", "Devansh","Adam"};
              names.forEach((value) {
                print('Value:  value');
              });
              """),
            Text("""
              // Set 用法
              Set varSet = Set();
              var varSet1 = Set.identity();
              var varSet2 = Set.from([1, 1, 1, 3]);
              var varSet3 = Set.of([1, 1, 1, 3]);
              Set.castFrom<num, int>([1, 2, 3].toSet());
            
              print(Set.of([1, 1, 1, 3, 5]).contains(2));
              print(Set.of([1, 1, 1, 1, 3, 3]).containsAll([1, 3]));
            
              print(Set.of([1, 2, 3]));
            
              var varSet5 = Set.of([1, 2, 3, 4, 4, 5]);
              varSet5.add(6);
              print(varSet5);
              varSet5.addAll([6, 7]);
              print(varSet5);
            
              varSet5.remove(3);
              print(varSet5);
              varSet5.removeAll([1, 3]);
              print(varSet5);
              varSet5.removeWhere((element) => element == 4);
              print(varSet5);
              print(varSet5.lookup(3));
              varSet5.retainAll([1, 2, 3]);
              varSet5.retainWhere((element) => element == 2);
              print(varSet5);
              """),
          ],
        ),
      ),
    );
  }
}