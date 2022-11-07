import 'package:flutter/material.dart';

class ListDemoPage extends StatefulWidget {
  const ListDemoPage({Key? key}) : super(key: key);

  @override
  ListDemoPageState createState() => ListDemoPageState();
}

class ListDemoPageState extends State<ListDemoPage> {
  var tempList = [1, 2, 3, 4, 5];
  // 同一个引用
  var filled = List.filled(3, []);
  // 列表查找
  List<String> notes = ['do', 'at', 'to', 'she'];
  // 填充
  var mapList = ['a', 'b', 'c'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
            array 是编程中非常常用的集合，Dart以 List对象的形式表示数组，列表只是一组有序的象。 dart:core 库提供了List类，该类允许创建和操作列表。
            """),
            Text("""
              var tempList = [1, 2, 3, 4, 5];
              //返回第一个元素的大小写。
              print(tempList.first); => ${tempList.first}
              //如果集合没有元素，则返回
              print(tempList.isEmpty); => ${tempList.isEmpty}
              //如果集合具有至少一个元素，则返回
              print(tempList.isNotEmpty); => ${tempList.isNotEmpty}
              //返回列表的大小。
              print(tempList.length); => ${tempList.length}
              //返回列表中的最后一个元素。
              print(tempList.last);  =>  ${tempList.last}
              //返回一个可迭代对象，该对象以相反的顺序包含列表值。
              print(tempList.reversed);  =>  ${tempList.reversed}
              //检查列表是否只有一个元素并返回它。
              print(tempList.single);  =>  tempList.single TOO Many Elements
              """),
            Text("""
            // 列表 操作
            List<num> theList = [1, 2, 3];
            // Iterable
            print(List.generate(3, (i) => i));  =>  ${List.generate(3, (i) => i)}
          
            // 同一个引用
            var filled = List.filled(3, []);
            filled[0].add(20); 
            print(filled);
            filled[1] = [333];
            print(filled); => $filled
          
            print(List.from({"a": "b"}.keys)); => ${List.from({"a": "b"}.keys)}
            print(List.of([5, 5, 5], growable: true)); => ${List.of([5, 5, 5], growable: true)}
          
            // [null,null,null]
            print(List(3)); => ${List.filled(3, null, growable: false)}
          
            //无法修改的数组
            print(List.unmodifiable([1, 2, 3])); => ${List.unmodifiable([1, 2, 3])}
          
            //
            print("castFrom:");
            print(List.castFrom<num, int>([1, 2, 3])); => ${List.castFrom<num, int>([1, 2, 3])}
          
            var aRange = List(5);
            var bRange = List(6);
            
            List.copyRange(aRange, 1, [2, 3, 4, 5]); 
            print(aRange);
          
            List.writeIterable(bRange, 1, [2, 3, 4, 5]);
            print(bRange);
          
            //输出第一个
            print([1, 2].first); => ${[1, 2].first}
          
            //输出最后一个
            print([1, 2].last); => ${[1, 2].last}
          
            var addList = [1, 2, 3];
            addList.add(4);
            addList.addAll([5, 6]);
            print(addList);
          
            var sortList = [3, 3, 3, 2, 1, 5];
            sortList.sort();
            print(sortList);
          
            //随机排序
            var randomList = [1, 2, 3333];
            randomList.shuffle();
            print(randomList);
          
            // 列表查找
            List<String> notes = ['do', 'at', 'to', 'she'];
            print(notes.indexOf('at'));  => ${notes.indexOf('at')}
            print(notes.indexOf('to'));  => ${notes.indexOf('to')}
          
            //列表 条件查找
            print(notes.indexWhere((element) => element.startsWith('a')));  => ${notes.indexWhere((element) => element.startsWith('a'))}
            print(notes.indexWhere((element) => element.startsWith('a'), 2)); => ${notes.indexWhere((element) => element.startsWith('a'), 2)}
          
            print(notes.lastIndexWhere((element) => element.startsWith('s'))); => ${notes.lastIndexWhere((element) => element.startsWith('s'))}
            print(notes.lastIndexWhere((element) => element.startsWith('s'), 2)); => ${notes.lastIndexWhere((element) => element.startsWith('s'), 2)}
          
            // 数组
            var varInsertArr = [1, 2, 3];
            varInsertArr.insert(0, 20);
            print(varInsertArr);
            varInsertArr.insertAll(4, [6, 6]);
            print(varInsertArr);
          
            var varSetArr = [1, 2, 3];
            varSetArr.setAll(1, [1, 2]);
            print(varSetArr);
            varSetArr.setRange(0, 1, [3, 4, 5]);
            print(varSetArr);
          
            var removeArr = [1, 2, 3, 3, 3, 3, 4];
            removeArr.remove(1);
            print(removeArr);
            removeArr.removeLast();
            print(removeArr);
            removeArr.removeAt(1);
            print(removeArr);
            removeArr.removeRange(0, 1);
            print(removeArr);
            removeArr.removeWhere((element) => element == 3);
            print(removeArr);
          
            // 保留数组中满足条件的元素
            var retainArr = [1, 2, 3, 3, 4, 5, 6, 7];
            retainArr.retainWhere((element) => element == 2);
            print(retainArr);
          
            var subList = [1, 2, 3, 4, 5];
            print(subList.sublist(2, 4)); //[3,4]
            print(subList.getRange(2, 4).toList());
          
            // 填充
            var fillRangeArr = [1, 2, 0, 0, 0];
            fillRangeArr.fillRange(2, 5, 5); 
            print(fillRangeArr);
          
            var replaceRangeArr = [1, 2, 0, 0, 0, 5, 6];
            replaceRangeArr.replaceRange(2, 5, [
              3,
              3,
              3,
            ]);
            print(replaceRangeArr);
          
            var mapList = ['a', 'b', 'c'];
            print(mapList.asMap()); => ${mapList.asMap()}
            """),
            Text("""
              // 数组用法
              //交集
              print([1, 2].toSet().intersection([1, 3].toSet())); => ${[1, 2].toSet().intersection([1, 3].toSet())}
            
              //输出所有的
              print([1, 2, 3].toSet().union([1, 2].toSet())); => ${[1, 2, 3].toSet().union([1, 2].toSet())}
            
              //输出不同
              print([1, 2, 3].toSet().difference([1, 3].toSet())); => ${[1, 2, 3].toSet().difference([1, 3].toSet())}
            
              print([1, 2, 3].join(',')); => ${[1, 2, 3].join(',')}
              print([1, 2, 3].firstWhere((element) => element == 2)); => ${[1, 2, 3].firstWhere((element) => element == 2)}
              print([1, 2, 3].last); => ${[1, 2, 3].last}
              print([1, 2, 3].first); => ${[1, 2, 3].first}
              print([1, 2, 3].lastIndexWhere((element) => element == 2)); => ${[1, 2, 3].lastIndexWhere((element) => element == 2)}
              print([1, 2, 3].lastWhere((element) => element == 2)); => ${[1, 2, 3].lastWhere((element) => element == 2)}
              print([1, 2, 3].map((e) => (e + 1))); => ${[1, 2, 3].map((e) => (e + 1))}
              //第一个值作为初始值
              print([1, 2, 3].reduce((value, element) => value + element)); => ${[1, 2, 3].reduce((value, element) => value + element)}
            
              print([1].single); => ${[1].single}
              print([1].singleWhere((element) => element == 1)); => ${[1].singleWhere((element) => element == 1)}
              print([1, 2, 3].skip(1)); => ${[1, 2, 3].skip(1)}
              print([1, 2, 3].skipWhile((value) => value == 2)); => ${[1, 2, 3].skipWhile((value) => value == 2)}
              print([1, 2, 3].take(2)); => ${[1, 2, 3].take(2)}
              print([1, 2, 3].takeWhile((value) => value == 2)); => ${[1, 2, 3].takeWhile((value) => value == 2)}
              print([1, 2, 3].where((value) => value > 2)); => ${[1, 2, 3].where((value) => value > 2)}
              print(["1", "2", "3"].whereType()); => ${["1", "2", "3"].whereType()}
              print([1, 2, 3].reversed); => ${[1, 2, 3].reversed}
              print([1, 2, 3].any((element) => element == 2)); => ${[1, 2, 3].any((element) => element == 2)}
              print([1, 2, 3].every((element) => element == 9)); => ${[1, 2, 3].every((element) => element == 9)}
              print([1, 2, 3].elementAt(0)); => ${[1, 2, 3].elementAt(0)}
              print([1, 2, 3].fold(0,
                      (previousValue, element) =>  element)); => ${[1, 2, 3].fold(0,
                    (previousValue, element) =>  element)}
              [1, 2, 3].forEach((element) {
                print(element);
              });
              //懒合并
              print([1, 2, 3].followedBy([9, 1, 5]));  => ${[1, 2, 3].followedBy([9, 1, 5])}
            
              // 数组中 动态添加
              print([1,2,3,...[5,6]]);  => ${[1,2,3,...[5,6]]}
              print([1,2,3,for(var i in [5,6]) i + 2]);  =>  ${[1,2,3,for(var i in [5,6]) i + 2]}
              print([1,2,3,if(true) 5,if(true) 6]);  => ${[1,2,3,if(true) 5,if(true) 6]}
            """),
          ],
        ),
      ),
    );
  }
}