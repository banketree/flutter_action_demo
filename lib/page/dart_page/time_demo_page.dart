import 'package:flutter/material.dart';

class TimeDemoPage extends StatefulWidget {
  const TimeDemoPage({Key? key}) : super(key: key);

  @override
  TimeDemoPageState createState() => TimeDemoPageState();
}

class TimeDemoPageState extends State<TimeDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Time Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
               //24:00:00.000000
                print(aDay); // 一天
                //0:00:00.000001
                print(aMicrosecond); // 微秒，百万分之一秒
                //0:00:00.001000
                print(aMillisecond); // 毫秒，千分之一秒
                //0:01:00.000000
                print(aMinute); // 一分钟
                //1:00:00.000000
                print(anHour); // 一小时
                //0:00:01.000000
                print(aSecond); // 一秒
                //168:00:00.000000
                print(aWeek); // 一周
              
                // 轻量级 存储
                // SharedPreferences prefs = await SharedPreferences.getInstance();
                // var token = prefs.getString("user_token");
              
                // loop 函数
                print(loop("hello", 0, -2)); // ol
              
                var g = Glob("/User/yugo/**/*.md");
                // true
                print(g.hasMatch("/User/yugo/a/some.md"));
                // 0 2 4 6 8
                range(0, 10, 2).forEach(print);
              
                var cache = MapCache<String, String>();
                // hello
                cache.set("key", "hello").then((_) => cache.get("key")).then(print);
              
                // 每秒触发
                var counter = CountdownTimer(const Duration(milliseconds: 5000),
                              const Duration(milliseconds: 1000));
                              counter.listen(print);
                Metronome.epoch(aSecond).listen((d) => print(d));                
              """),
          ],
        ),
      ),
    );
  }
}