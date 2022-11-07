import 'package:flutter/material.dart';

class ZoneDemoPage extends StatefulWidget {
  const ZoneDemoPage({Key? key}) : super(key: key);

  @override
  ZoneDemoPageState createState() => ZoneDemoPageState();
}

class ZoneDemoPageState extends State<ZoneDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Zone Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
            ///Dart中有一个runZoned(...) 方法，可以给执行对象指定一个Zone。
            ///Zone表示一个代码执行的环境范围，为了方便理解，读者可以将Zone类比为一个代码执行沙箱，不同沙箱的之间是隔离的，
            ///沙箱可以捕获、拦截或修改一些代码行为，如Zone中可以捕获日志输出、Timer创建、微任务调度的行为，
            ///同时Zone也可以捕获所有未处理的异常。下面我们看看runZoned(...)方法定义：
            //R runZoned<R>(R body(), {
            //    Map zoneValues,
            //    ZoneSpecification zoneSpecification,
            //    Function onError,
            //})
            //zoneValues:Zone 的私有数据，可以通过实例zone[key]获取，可以理解为每个“沙箱”的私有数据。
            //-zoneSpecification：Zone的一些配置，可以自定义一些代码行为，比如拦截日志输出行为等，
            """),
            Text("""
             test1() {
               runZoned(() {
                 print(Zone.current[#foo]);
               }, zoneValues: { #foo: "hello" });
             }
            
            test2() {
               runZoned(() {
                 print('red color text');
               }, zoneSpecification: new ZoneSpecification(
                 print: (self, parent, zone, message) {
                   self.parent.print("\u001b[31m message");
                 }));
             }
            
            test3() {
               runZoned(() {
                 print('red color text');
               }, zoneSpecification: new ZoneSpecification(
                 print: (self, parent, zone, message) {
                   self.parent.print("\u001b[31m message");
                 }));
             }
            
            test4() {
              List events = [];
              bool override = false;
            
              Zone forked = Zone.current.fork(specification: new ZoneSpecification(
                  run: <R>(Zone self, ZoneDelegate parent, Zone origin, R f()) {
                events.add("2");
                if (!override) return parent.run(origin, f);
                return 42 as R;
              }));
            
              events.add("1");
              var result = forked.run(() {
                events.add("3");
                return 88;
              });
            
              print(result); // 88
              override = true; // 开启拦截
            
              var result2 = forked.run(() {
                events.add("not run"); // 没有运行
                return 200;
              });
              print(result2); // 42
            
              print(events);
            }
              """),
          ],
        ),
      ),
    );
  }
}