import 'package:flutter/material.dart';

class PathDemoPage extends StatefulWidget {
  const PathDemoPage({Key? key}) : super(key: key);

  @override
  PathDemoPageState createState() => PathDemoPageState();
}

class PathDemoPageState extends State<PathDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Path Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
              test() {
                var url = Uri.parse("http://www.baidu.com/a/b/c?d=3#e=2");
                // http
                print(url.scheme);
                // www.baidu.com
                print(url.host);
                // /a/b/c
                print(url.path);
                // e=2
                print(url.fragment);
                // http://www.baidu.com
                print(url.origin);
                // d=3
                print(url.query);
                Path.fromUri(Uri());
              
                var path = Path.fromUri("file:///Users/yugo");
                //file:///Users/yugo
                print(Path.toUri("/Users/yugo"));
                ///Users/yugo
                print(path);
              
                //   * absolute --> current path
                // * relative --> current path
                // * join
                // * joinAll
                // * dirname
                // * basename
                // * normalize
                // 项目地址
                print(Path.current);
                // 同上
                print(Directory.current);
                // 绝对地址
                print(Path.absolute("./a.dart"));
                // 相对地址
                print(Path.relative("./a.dart"));
                // 合并
                print(Path.join(Path.current,"./a.dart"));
                // /Users/banketree/Desktop/study_plan_flutter/./a.dart
                print(Path.joinAll([Path.current,"./a.dart"]));
                // /a/b
                print(Path.dirname("/a/b/c"));
                // a.dart
                print(Path.basename("./a.dart"));
                // a.dart
                print(Path.normalize("./a.dart"));
                // 1: file:///Users/banketree/Desktop/study_plan_flutter/lib/dart_test3/demo.dart
                print('1: ' + Platform.script.toString());
                // 2: /Users/banketree/Desktop/study_plan_flutter/lib/dart_test3/demo.dart
                print('2: ' + Platform.script.path);
                // 3: /Users/banketree/Library/Sdk/flutter/bin/cache/dart-sdk/bin/dart
                print('3: ' + Platform.executable);
                // 5: /Users/banketree/Library/Sdk/flutter/bin/cache/dart-sdk/bin/dart
                print('5: ' + Platform.resolvedExecutable);
              
                // /Users/banketree/Desktop/study_plan_flutter/lib/dart_test3/demo.dart
                print(Platform.script.path);
              }
              """),
          ],
        ),
      ),
    );
  }
}