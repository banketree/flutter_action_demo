import 'package:flutter/material.dart';

class StdoutDemoPage extends StatefulWidget {
  const StdoutDemoPage({Key? key}) : super(key: key);

  @override
  StdoutDemoPageState createState() => StdoutDemoPageState();
}

class StdoutDemoPageState extends State<StdoutDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Stdout Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
              stdout.writeln("hello world");
              stdout.add([97, 98, 99, 100, "\n".codeUnitAt(0)]);
              var strList = "list: hello".split('').map((v) => v.codeUnitAt(0)).toList();
              var sm = Stream.fromIterable([strList]);
              stdout.addStream(sm);
              stderr.writeln("err: hello world");
            
              var str = stdin.readLineSync();
              print(str);
            
              var a = stdin.asBroadcastStream();
              a.listen(print);
              """),
          ],
        ),
      ),
    );
  }
}