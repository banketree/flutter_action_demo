import 'dart:core';

import 'package:flutter/material.dart';

class NumDemoPage extends StatefulWidget {
  const NumDemoPage({Key? key}) : super(key: key);

  @override
  NumDemoPageState createState() => NumDemoPageState();
}

class NumDemoPageState extends State<NumDemoPage> {
  var num = 1;
  var numDouble = 1.0;

  // var 用法
  var varNum = 20;
  int varInt = 20;
  final valTest = 20;

  //const关键字表示编译时间常量，最终变量只能设置一次。我们可以使用final关键字来定义常量。
  // const 用法 他们的对象是同一个
  static const compileArray1 = [1, 2, 3];
  static const compileArray2 = const [1, 2, 3];
  var compileArray3 = const [1, 2, 3];

  // num 四舍五入
  var numSome = 20;
  var varRadix = int.parse("99", radix: 20);
  var varRet = int.tryParse("oo");
  double d = -2.9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Num Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
          Dart number可以归类为-
          int        -    任意大小的整数。
          double  -    64位(双精度)浮点数，由IEEE 754标准指定， double 数据类型用于表示小数
          """),
            const SizedBox(
              height: 20,
            ),
            Text("""
            //返回数字的hashCode。
            print(num.hashCode);  =>  ${num.hashCode}
            //如果数量有限，则为true；否则为false。
            print(num.isFinite);  =>  ${num.isFinite}
            //如果数字是正无穷大或负无穷大，则为true，否则为false。
            print(num.isInfinite);  =>  ${num.isInfinite}
            //如果数字是非数字双精度值，则为true；否则为false。
            print(num.isNaN);  =>  ${num.isNaN}
            //如果数字为负，则为true；否则为false。
            print(num.isNegative);  =>  ${num.isNegative}
            //根据数字的符号和数值，返回负一，零或加一。
            print(num.sign);  =>  ${num.sign}
            //如果数字是偶数，则返回true。
            print(num.isEven);  =>  ${num.isEven}
            //如果数字是奇数，则返回true。
            print(num.isOdd);  =>  ${num.isOdd}
          
            //返回数字的绝对值。
            print(num.abs());  =>  ${num.abs()}
            //返回不小于该数字的最小整数。
            print(num.ceil());  =>  ${num.ceil()}
            //将此与其他数字进行比较。
            print(num.compareTo(2));  =>  ${num.compareTo(2)}
            //返回不大于当前数字的最大整数。
            print(num.floor());  => ${num.floor()}
            //将两个数字相除后，返回截断的余数。
            print(num.remainder(3));  =>  ${num.remainder(3)}
            //返回最接近当前数字的整数。
            print(num.round());  =>  ${num.round()}
            //返回数字的双精度对数。
            print(num.toDouble());  =>  ${num.toDouble()}
            //返回与数字相等的整数。
            print(num.toInt());  =>  ${num.toInt()}
            //返回数字的字符串等效表示形式。
            print(num.toString());  =>  ${num.toString()}
            //丢弃任何小数位后返回整数。
            print(num.truncate());  =>  ${num.truncate()}
            """),
            Text("""
              // var 用法
            var varNum = 20;
            int varInt = 20;
            final valTest = 20;
          
            //const关键字表示编译时间常量，最终变量只能设置一次。我们可以使用final关键字来定义常量。
            // const 用法 他们的对象是同一个
            const compileArray1 = [1, 2, 3];
            const compileArray2 = const [1, 2, 3];
            var compileArray3 = const [1, 2, 3];
            print(compileArray1 == compileArray2); => ${compileArray1 == compileArray2}
            print(compileArray3 == compileArray2); => ${compileArray3 == compileArray2}
          
            // num 四舍五入
            num numSome = 20;
            var varRadix = int.parse("99", radix: 20); => ${int.parse("99", radix: 20)}
            var varRet = int.tryParse("oo"); => ${int.tryParse("oo")}
            double d = -2.9;
            print(d.round());  => ${d.round()}
            print(d.ceil());  => ${d.ceil()}
            print(d.floor());  => ${d.floor()}
            print(d.abs());  => ${d.abs()}
            print(d.truncate());  => ${d.truncate()}
            print(d.clamp(29, 30)); => ${d.clamp(29, 30)}
            print(d.compareTo(20));  => ${d.compareTo(20)}
            
            var arr = [1, 2, 3]..add(4)..add(5)..add(6)..add(7);  => ${[1, 2, 3]..add(4)..add(5)..add(6)..add(7)}
            """),
          ],
        ),
      ),
    );
  }
}