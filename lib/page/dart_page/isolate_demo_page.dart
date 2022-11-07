import 'package:flutter/material.dart';

class IsolateDemoPage extends StatefulWidget {
  const IsolateDemoPage({Key? key}) : super(key: key);

  @override
  IsolateDemoPageState createState() => IsolateDemoPageState();
}

class IsolateDemoPageState extends State<IsolateDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Isolate Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
            //同步生成器
            //
            //使用sync*，返回的是Iterable对象。
            //yield会返回moveNext为true,并等待 moveNext 指令。
            //调用getSyncGenerator立即返回Iterable对象。
            //调用moveNext方法时getSyncGenerator才开始执行。
            //异步生成器
            //
            //使用async*，返回的是Stream对象。
            //yield不用暂停，数据以流的方式一次性推送,通过StreamSubscription进行控制。
            //调用getAsyncGenerator立即返回Stream,只有执行了listen，函数才会开始执行。
            //listen返回一个StreamSubscription 对象进行流监听控制。
            """),
            Text("""
            ///可以使用StreamSubscription对象对数据流进行控制。
            //同步生成器： 使用sync*，返回的是Iterable对象
            Iterable<int> getSyncGenerator(int n) sync* {
              print('start');
              int k = 0;
              while (k < n) {
                yield k++;
              }
              print('end');
            }
            
            //异步生成器： 使用async*，返回的是Stream对象
            Stream<int> getAsyncGenerator(int n) async* {
              print('start');
              int k = 0;
              while (k < n) {
                //yield不用暂停，数据以流的方式一次性推送,通过StreamSubscription进行控制
                yield k++;
              }
              print('end');
            }
            
            test() {
              //同步生成器
              var it = getSyncGenerator(5).iterator;
              while (it.moveNext()) {
                print(it.current);
              }
              print('-----------------------------------------------------');
              //异步生成器
              // ignore: cancel_subscriptions
              StreamSubscription subscription = getAsyncGenerator(5).listen(null);
              subscription.onData((value) {
                print(value);
                if (value >= 2) {
                  subscription.pause(); //可以使用StreamSubscription对象对数据流进行控制
                }
              });
            }
            
            ////////////////////////////////////////////////////////////////////////////////
            void foo(var message) {
              print('execution from foo ... the message is :message');
            }
            
            test2() {
              Isolate.spawn(foo, 'Hello!!');
              Isolate.spawn(foo, 'Greetings!!');
              Isolate.spawn(foo, 'Welcome!!');
            
              print('execution from main1');
              print('execution from main2');
              print('execution from main3');
            }
            
            ////////////////////////////////////////////////////////////////////////////////
            test3() {
              File file = new File(Directory.current.path + "\\data\\contact.txt");
              Future<String> f = file.readAsString();
            
              //returns a futrue, this is Async method
              f.then((data) => print(data));
            
              //once file is read , call back method is invoked
              print("End of main");
              //this get printed first, showing fileReading is non blocking or async
            }
              """),
            Text("""
              main() async {
                ReceivePort receivePort = ReceivePort();
                //spawning
                Isolate.spawn(echo, receivePort.sendPort);
              
                //await-for 循环
                await for (var msg in receivePort) {
                  print(msg);
                }
              
                receivePort.listen((msg) {
                  print(msg);
                });
                print('Hello World');
              }
              
              echo(SendPort sendPort) async {
                ReceivePort receivePort = ReceivePort();
                sendPort.send("message");
              }
              """),
            Text("""
            Future<void> sayHello() async {
              var val = await Future.value(20);
            }
            
            Stream<num> getRange3(num end) async* {
              for (var i = 0; i < end; i++) {
                yield i;
              }
            }
            
            Stream<num> getRange2(num end) {
              return Stream.fromIterable(Iterable.generate(end, (v) => v));
            }
            
            Stream<num> getRange1(num end) {
              var scl = StreamController();
              for (var i = 0; i < end; i++) {
                scl.sink.add(i);
              }
              return scl.stream;
            }
            
            main(List<String> args) {
              var ct1 = Completer();
              var ct2 = Completer.sync();
            
              ct1.future.then((value) => print(value));
              ct2.future.then(print);
            
              ct1.complete("same");
            //  ct1.completeError("error");
            
              Future future1 = Future.value("hello");
              Future.value(10)
                  .then((value) => print(value))
                  .catchError((e) => print(e))
                  .whenComplete(() => {print("finish")});
            
              Future.value(20)
                  .then((value) => 30)
                  .then((value) => Future.value(40))
                  .then((value) => print(value));
            
              Future.delayed(Duration(milliseconds: 1000));
              Future.error("error");
              Future.sync(() => 20);
            
              Future.wait([future1]);
            
              Future.microtask(() => {2}).then((value) => print(value));
            
              Future.forEach([9, 8, 6], (element) => {print(element), Future.value(10)});
            
              Future.any([Future.value(88), Future.value(99)])
                  .then((value) => print(value));
            
              scheduleMicrotask(() {
                Future.value(1).then((value) => print(value));
              });
            
              scheduleMicrotask(() {
                print("dfff");
              });
            
              var s1 = StreamController.broadcast();
              s1.stream.listen((event) {
                print(event);
              });
              s1.stream.listen((event) {
                print(event);
              });
              s1.sink.add(1);
            
              var s2 = Stream.fromFutures([Future.value(2)]);
              var s3 = Stream.periodic(Duration(seconds: 1));
              var s5 = Stream<String>.eventTransformed(s3, (sink) => LogSink(sink));
              var s6 = Stream.fromFuture(Future.value(2));
              var s7 = s3.asyncExpand((event) => Stream.fromFuture(Future.value(20)));
              var s8 = Stream.fromFuture(Future.value(2)).expand((i) => [i, i]);
              s7.toList().then((value) => print(value));
              s8.toList().then((value) => print(value));
              LineSplitter;
            
              var ctl2 = StreamController<int>();
              var stream1 = Stream.fromIterable([1, 2, 3]);
            //  stream1.pipe(ctl2.sink);
              ctl2.addStream(stream1);
            
              stream1.timeout(Duration(seconds: 2), onTimeout: (sink) {
                print("time out");
              });
              stream1.asBroadcastStream();
            //  stream1.drain();
              Stream.fromIterable([1, 2, 2, 3])
                  .distinct()
                  .toList()
                  .then((value) => print(value));
              var transformer = StreamTransformer.fromBind((s) => s);
              StreamTransformer.fromHandlers(
                handleData: (v, sink) {
                  sink.add(v + 2);
                },
                handleDone: (sink) {},
                handleError: (obj, errStack, sink) {},
              );
            //  stream1.transform(transformer);
            
              Stream.fromIterable([1, 2, 3])
                  .map((event) => event + 1)
                  .toList()
                  .then((value) => print(value));
            }
            
            class LogSink implements EventSink<String> {
              final EventSink<String> _outputSink;
            
              LogSink(this._outputSink);
            
              void add(String data) {
                print(">>>>>> the data is data");
                _outputSink.add(data);
              }
            
              void addError(e, [st]) {
                _outputSink.addError(e, st);
              }
            
              void close() {
                _outputSink.close();
              }
            }
            """),
          ],
        ),
      ),
    );
  }
}