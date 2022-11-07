import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StringDemoPage extends StatelessWidget {
  final _tempValue = "test";
  var varStr2 = "Test";
  var varStr3 = """Test""";
  var str = String.fromCharCodes([
    13,
    10,
    67,
  ]);

  StringDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("String Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("    String数据类型表示字符序列， Dart字符串是UTF 16代码单元的序列，"
                "\nDart中的字符串值可以使用单引号，双引号或三引号表示。"
                "\n单行字符串使用单引号或双引号表示。三引号用于表示多行字符串。"),
            const SizedBox(
              height: 20,
            ),
            Text("""
            var _tempValue = "test";
            \n
            //返回此字符串的UTF-16代码单元的不可更改列表。
            print(_tempValue.codeUnits);  => ${_tempValue.codeUnits}
            //如果此字符串为空，则返回true。
            print(_tempValue.isEmpty); => ${_tempValue.isEmpty}
            //返回字符串的长度，包括空格，制表符和换行符。
            print(_tempValue.length); => ${_tempValue.length}
            """),
            Text("""
            //将此字符串中的所有字符转换为小写。
            print(_tempValue.toLowerCase()); => ${_tempValue.toLowerCase()}
            //将此字符串中的所有字符转换为大写。
            print(_tempValue.toUpperCase()); => ${_tempValue.toUpperCase()}
            //返回没有任何前导和尾随空格的字符串。
            print(_tempValue.trim()); => ${_tempValue.trim()}
            //将此对象与另一个对象进行比较。
            print(_tempValue.compareTo("TEST")); => ${_tempValue.compareTo("TEST")}
            //将所有与指定模式匹配的子字符串替换为给定值。
            print(_tempValue.replaceAll(RegExp(r"a"), "")); => ${_tempValue.replaceAll(RegExp(r"a"), "")}
            //在指定分隔符的匹配项处分割字符串，并返回子字符串列表。
            print(_tempValue.split("")); => ${_tempValue.split("")}
            //返回此字符串的子字符串，该子字符串从startIndex(包括在内)到endIndex(不包括)之间扩展。
            print(_tempValue.substring(0, 1)); => ${_tempValue.substring(0, 1)}
            //返回此对象的字符串表示形式。
            print(_tempValue.toString()); => ${_tempValue.toString()}
            //返回给定索引的16位UTF-16代码单元。  通过其索引进行访问，返回给定索引的16位UTF-16代码单元。
            print(_tempValue.codeUnitAt(0)); => ${_tempValue.codeUnitAt(0)}
            """),
            Text("""
            //Unicode代码点通常表示为\\uXXXX ，其中XXXX是4位十六进制值。要指定多于或少于4个十六进制数字，请将值放在大括号中。可以在dart:core库中使用Runes类的构造函数。
            print(_tempValue.runes); => ${_tempValue.runes}
          
            // 存储单位 数据存储是以“字节”(Byte)为单位
            Runes("🍆 🍉 🍎").forEach((element) {
              print(element);
            });  => ${Runes("🍆 🍉 🍎")}
          
            print(_tempValue == varStr2);  => ${_tempValue == varStr2}
            print(varStr3 == varStr2);  => ${varStr3 == varStr2}
            print(r"\n");  =>  ${r"\n"}
            print(_tempValue.compareTo("Test"));  => ${_tempValue.compareTo("Test")}
            for (var i in 'e'.allMatches("string Test")) {
              print(i.start);
              print(i.group(0));
            }   => ${'e'.allMatches("string Test")}
          
            // 字符 匹配
            var varRet1 = 'e'.matchAsPrefix("eee22e2"); => ${'e'.matchAsPrefix("eee22e2")}
            print(varRet1.end);  => ${'e'.matchAsPrefix("eee22e2")?.end}
          
            // 字符串操作
            print(String.fromCharCodes([0x1D11E]));  =>  ${String.fromCharCodes([0x1D11E])}
            print(String.fromCharCode(0x1D11E));  =>  ${String.fromCharCode(0x1D11E)}
            print(String.fromEnvironment("name", defaultValue: "Nana")); => {String.fromEnvironment("name", defaultValue: "Nana")}
            print("Code".endsWith('o'));  =>  ${"Code".endsWith('o')}
            print("Code".startsWith('o'));  =>  ${"Code".startsWith('o')}
            print("Coco".startsWith(new RegExp(r'C')));  => ${"Coco".startsWith(new RegExp(r'C'))}
            print("Coco".indexOf('C'));  =>  ${"Coco".indexOf('C')}
            print("Coco".lastIndexOf('c'));  =>  ${"Coco".lastIndexOf('c')}
            print('i love dart'.substring(2, 6));  =>  ${'i love dart'.substring(2, 6)}
            print('i love dart'.contains('love'));  =>  ${'i love dart'.contains('love')}
            print('i love dart'.replaceFirst(RegExp(r"love"), "hate"));  => ${'i love dart'.replaceFirst(RegExp(r"love"), "hate")}
            print('abc abc'
                .replaceFirstMapped(RegExp(r"a"), (v) => v.start.toString()));  => ${'abc abc'
                .replaceFirstMapped(RegExp(r"a"), (v) => v.start.toString())}
            print('abc abc'.replaceAll(RegExp(r"a"), "aa"));  =>  ${'abc abc'.replaceAll(RegExp(r"a"), "aa")}
            print('i hate dart'.replaceRange(2, 6, "love"));  =>  ${'i hate dart'.replaceRange(2, 6, "love")}
            print('i hate dart'.split(" "));  => ${'i hate dart'.split(" ")}
            print("abba".split(RegExp(r"b*")));   =>  ${"abba".split(RegExp(r"b*"))}
            print("ABC".toLowerCase());  =>  ${"ABC".toLowerCase()}
            print("abc".toUpperCase());   =>  ${"abc".toUpperCase()}
          
            print("i hate dart".splitMapJoin(RegExp(r"hate"),
                onMatch: (_) => "love", onNonMatch: (_) => "=="));   =>  ${"i hate dart".splitMapJoin(RegExp(r"hate"),
                onMatch: (_) => "love", onNonMatch: (_) => "==")}
            """),
            Text("""
             var str = String.fromCharCodes([
              13,
              10,
              67,
            ]);
            var i = 0;
            for (var m in RegExp(r"\n(.+)", multiLine: true).allMatches(str)) {
              print(i);
              i++;
              print(m.group(1));
            }  =>  ${RegExp(r"\n(.+)", multiLine: true).allMatches(str)}
            """)
          ],
        ),
      ),
    );
  }
}