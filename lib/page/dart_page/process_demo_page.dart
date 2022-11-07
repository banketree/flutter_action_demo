import 'package:flutter/material.dart';

class ProcessDemoPage extends StatefulWidget {
  const ProcessDemoPage({Key? key}) : super(key: key);

  @override
  ProcessDemoPageState createState() => ProcessDemoPageState();
}

class ProcessDemoPageState extends State<ProcessDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Process Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
                // var result = Process.runSync("git", ["--version"]);
                // print(result.pid);
                // print(result.stdout);
                // var ret = Process.killPid(result.pid, ProcessSignal.sighup);
                // print(ret);
              
                // Process.run("live-server", ['.']).then((result){
                //   stdout.addStream(result.stdout); // 没效果
                //   stderr.addStream(result.stderr); // 没效果
                // });
              
                // Process.start("live-server", ['.']).then((result){
                //   stdout.addStream(result.stdout);
                //   stderr.addStream(result.stderr);
                // });
              
                // 文件日志
                // await Process.start("live-server", ['.']).then((result){
                //   var file = File('log.txt');
                //   var sink = file.openWrite();
                //   sink.addStream(result.stdout);
                // });
              
                // 后台运行
                await Process.start("live-server", ['.'],
                        runInShell: true, mode: ProcessStartMode.detached)
                    .then((result) {
                  var file = File('log.txt');
                  // ignore: close_sinks
                  var sink = file.openWrite();
                  sink.addStream(result.stdout);
                });
              """),
          ],
        ),
      ),
    );
  }
}