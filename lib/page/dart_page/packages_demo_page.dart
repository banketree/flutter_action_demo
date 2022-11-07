import 'package:flutter/material.dart';

class PackagesDemoPage extends StatefulWidget {
  const PackagesDemoPage({Key? key}) : super(key: key);

  @override
  PackagesDemoPageState createState() => PackagesDemoPageState();
}

class PackagesDemoPageState extends State<PackagesDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Packages Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
            ///包Packages是一种封装机制，每种语言都有一种管理外部程序包的机制，如Java的Maven或Gradle，.NET的Nuget，Node.js的npm等，Dart的程序包管理器是 pub
            ///包元数据在文件 pubsec.yaml 中定义， YAML是另一种标签语言的缩写， pub 工具可用于下载应用程序所需的所有各种库。
            ///每个Dart应用程序都有一个 pubspec.yaml 文件，其中包含应用程序对其他库的依赖关系以及应用程序的元数据，如应用程序名称，作者，版本和说明。
            """),
            Text("""
            ///pubspec.yaml 文件的内容应类似于以下内容:
            ///name: 'vector_victor'
            ///version: 0.0.1
            ///description: An absolute bare-bones web app.
            ///...
            ///dependencies: browser: '>=0.10.0 <0.11.0'
            
            ///"pub get"
            ///帮助获取您的应用程序所依赖的所有软件包。
            ///"pub upgrade"
            ///将所有依赖项升级到新版本。
            ///"pub build"
            ///这用于构建Web应用程序，它将创建一个build文件夹，其中包含所有相关脚本。
            ///"pub help"
            ///这将为您提供所有不同发布命令的帮助
              """),
          ],
        ),
      ),
    );
  }
}