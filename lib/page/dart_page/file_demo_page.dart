import 'package:flutter/material.dart';

class FileDemoPage extends StatefulWidget {
  const FileDemoPage({Key? key}) : super(key: key);

  @override
  FileDemoPageState createState() => FileDemoPageState();
}

class FileDemoPageState extends State<FileDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("File Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
            File 文件读取与写入
            """),
            Text("""
            var file = File(".gitignore");
            print(file.readAsStringSync()); // 读取所有内容
            print(file.isAbsolute); // 绝对路径
            print(file.statSync()); // 文件信息
            // file.rename("some"); // 重名名
            print(file.uri); // 唯一路径
            file.setLastAccessedSync(new DateTime.now()); // 设置最后访问时间
            file.setLastModifiedSync(new DateTime.now()); // 设置最后修改时间
            file.watch().listen(print);
            // file.deleteSync(); // 删除文件
            file.existsSync(); // 文件是否存在
            print(file.parent); // 所在目录
            // file.writeAsStringSync("something"); // 写入文本内容
          
            // ascii 操作
            var raf = file.openSync();
            var list = raf.readSync(10);
            print(String.fromCharCodes(list));
          
            var raw = file.openWrite();
            raw.write("some");
              """),
            Text("""
            var dir = Directory('.dart_tool');
            var file = dir.listSync(recursive: true);
            dir.createTempSync("a_test"); //会在该目录下创建一个 a_testQT9k6h 后面跟一段随机串的文件
            print(file);
            
            var node = Link("node");
            node.createSync("/Users/yugo/.nvm/versions/node/v10.10.0/bin/node");
              """),
          ],
        ),
      ),
    );
  }
}