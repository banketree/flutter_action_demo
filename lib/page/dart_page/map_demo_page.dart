import 'package:flutter/material.dart';

class MapDemoPage extends StatefulWidget {
  const MapDemoPage({Key? key}) : super(key: key);

  @override
  MapDemoPageState createState() => MapDemoPageState();
}

class MapDemoPageState extends State<MapDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Map Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
            Map对象是一个简单的键/值对，Map中的键和值可以是任何类型，Map是动态集合，换句话说，Map可以在运行时增长和收缩。
            """),
            Text("""
            var tempMap = {'Usrname': 'tom', 'Password': 'pass@123'};
          
            //返回表示键的可迭代对象
            print(tempMap.keys);
            //返回表示值的可迭代对象
            print(tempMap.values);
            //返回Map的大小
            print(tempMap.length);
            //如果Map为空，则返回true
            print(tempMap.isEmpty);
            //如果Map为不为空，则返回true
            print(tempMap.isNotEmpty);
          
            //将其他所有的键/值对添加到此Map。
            tempMap.addAll({"": ""});
            //从Map上删除所有元素。
            tempMap.clear();
            //从Map中删除键及其关联的值。
            tempMap.remove("");
            //将Map应用于映射的每个键值对。
            tempMap.forEach((key, value) {
              print("key value");
            });
              """),
            Text("""
            // Map 用法
            var varMap = new Map<String, num>();
            varMap = {"1": 1, "2": 2};
            varMap = Map.unmodifiable({"1": 1, "2": 2});
            varMap =
                Map.fromIterable([1, 2, 3], key: (i) => i.toString(), value: (i) => i);
            varMap = Map.fromIterables(["1", "2", "3"], [1, 2, 3]);
            varMap = Map.fromEntries([MapEntry("1", 1), MapEntry("2", 2)]);
          
            print({"1": 1}.containsKey("1"));
            print({"1": 1}.containsValue(1));
          
            varMap = {"a": 2};
            varMap.update("a", (value) => value + 1);
            varMap["a"] += 1;
            varMap.updateAll((key, value) {
              if (key == 'a') {
                return value + 1;
              }
              return value;
            });
            varMap.remove("a");
            varMap.removeWhere((key, value) => key == 'a');
            varMap.clear();
            varMap.putIfAbsent("b", () => 20);
            varMap.addAll({"a": 2, "b": 3});
            varMap.addEntries([MapEntry("1", 1), MapEntry("2", 2)]);
            print(({"a": 1, "b": 2}).keys.toList());
            print(({"a": 1, "b": 2}).values.toList());
              """),
          ],
        ),
      ),
    );
  }
}