import 'package:flutter/material.dart';

class SocketDemoPage extends StatefulWidget {
  const SocketDemoPage({Key? key}) : super(key: key);

  @override
  SocketDemoPageState createState() => SocketDemoPageState();
}

class SocketDemoPageState extends State<SocketDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Socket Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("""
            main() {
              ServerSocket.bind("127.0.0.1", 4000).then((serverSocket) {
                HttpServer httpserver = new HttpServer.listenOn(serverSocket);
                httpserver.listen((req) {
                  // print(req.requestedUri); // http://localhost:4000/a/b/c?d=123
                  // print(req.uri); // /a/b/c?d=123
                  // print(req.method); // GET
                  // print(req.session); // HttpSession instance
                  // print(req.cookies); // []
                  // print(req.connectionInfo); // HttpConnectionInfo instace
                  // print(req.headers); // 各种请求头
            //      req.transform(utf8.decoder).listen((data) async {
            //        var boundary = req.headers.contentType.parameters['boundary'];
            //        print(data); // 接受到的数据
            //        var splied = data.split("--" + boundary);
            //        splied.removeWhere((v) => v.contains("--") || v == "");
            //        splied.forEach((item) {
            //          var disposition = RegExp("Content-Disposition: (.*);")
            //              .allMatches(item)
            //              .first
            //              .group(1);
            //          var name = RegExp("name=\"(.*)\"").allMatches(item).first.group(1);
            //          var value = RegExp(r'\n(.+)').allMatches(item).last.group(1);
            //          print(disposition);
            //          print(name);
            //          print(value);
            //        });
            //        req.response.write("hello");
            //        req.response.statusCode = 200;
            //        req.cookies + [Cookie("name", "yugo")];
            //        req.headers.contentType = ContentType.html;
            //        await req.response.close();
            //      });
                });
              });
            }
              """),
            Text("""
            test() async {
            var server = await HttpServer.bind('127.0.0.1', 4040);
            server.listen((HttpRequest req) async {
              print(req.headers);
              // ignore: close_sinks
              var socket = await WebSocketTransformer.upgrade(req);
              print(req.response.headers);
              socket.add("hello"); // 发送数据
              socket.listen((conn) {
                // 接受数据
                print(conn);
              });
            });
          }
          
          test2() async {
            var staticHandler = createStaticHandler('static',
                defaultDocument: 'index.html', listDirectories: true);
          
            var wsHandler = webSocketHandler((webSocket) {
              webSocket.stream.listen((message) {
                webSocket.sink.add("echo message");
              });
            });
          
            var handler =
                const Pipeline().addMiddleware(logRequests()).addHandler((req) async {
              print(req.url.path);
              if (req.url.path.contains("ws")) {
                return await wsHandler(req);
              } else if (req.url.path.contains("static")) {
                var staticData = await staticHandler(req.change(path: 'static'));
                return staticData;
              } else {
                return Response.ok("hello");
              }
            });
          
            await io.serve(handler, 'localhost', 8080);
          
            // HttpMultiServer([server1, server2]).listen((req){
            //   print(req);
            // }); // not work
          }
          
          test3() async {
            var staticHandler = createStaticHandler('static',
                defaultDocument: 'index.html', listDirectories: true);
          
            var wsHandler = webSocketHandler((webSocket) {
              print(webSocket);
              webSocket.stream.listen((message) {
                webSocket.sink.add("echo message");
              });
            });
          
            var s1 = io.serve(staticHandler, "localhost", 8080, shared: true);
            var s2 = io.serve(wsHandler, "localhost", 8080, shared: true);
            // var stremReq = HttpMultiServer([s2, s1]);
            // io.serveRequests(stremReq, )
          }
          
          main() {
            test();
            test2();
            test3();
          }
              """),
            Text("""
            low tcp
            
            main(List<String> args) {
            RawServerSocket.bind('127.0.0.1', 4041).then((serverSocket) {
              serverSocket.listen((socket) {
                socket.listen((event) {
                  if (event == RawSocketEvent.read) {
                    var ret = socket.read();
                    print(ret);
                  }
                });
              });
            });
          }
          
          main(List<String> args) {
            RawSocket.connect('127.0.0.1', 4041).then((socket) {
              socket.write(["A", "B", "C"].map((v) => v.codeUnitAt(0)).toList());
            });
          }
              """),
            Text("""
            tls
                        
            String localFile(path) => File(path).path;
            
            SecurityContext serverContext = new SecurityContext()
              ..useCertificateChain(localFile('127.0.0.1.pem'))
              ..usePrivateKey(localFile('127.0.0.1-key.pem'));
            
            main(List<String> arguments) {
              SecureServerSocket.bind("127.0.0.1", 9900, serverContext).then((server) {
                server.listen((socket) {
                  socket.listen((data) {
                    print(data);
                  });
                });
              });
            }
            
            String localFile(path) => File(path).path;
            
            main(List<String> args) {
              SecurityContext clientContext = new SecurityContext()
                ..setTrustedCertificates(
                    localFile('/Users/yugo/Library/Application Support/mkcert/rootCA.pem'));
            
              SecureSocket.connect("127.0.0.1", 9900, context: clientContext)
                  .then((socket) {
                socket.write("hello");
              });
            }
              """),
            Text("""
            tcp 
            
            main(List<String> args) {
              ServerSocket.bind('127.0.0.1', 4041).then((serverSocket) {
                serverSocket.listen((socket) {
            //      socket.transform(utf8.decoder).listen(print);
                });
              });
            }
            
            main(List<String> args) {
              Socket.connect('127.0.0.1', 4041).then((socket) {
                socket.write('Hello, World!');
              });
            }
              """),
            Text("""
            udp
            
            main(List<String> args) {
              RawDatagramSocket.bind('127.0.0.1', 4041).then((socket) {
                socket.listen((e) {
                  if (e == RawSocketEvent.read) {
                    var data = socket.receive();
                    print(String.fromCharCodes(data.data));
                  }
                });
              });
            }
            
            main(List<String> args) {
              RawDatagramSocket.bind('127.0.0.1', 4042).then((socket) {
                socket.send(utf8.encoder.convert('hello world'),
                    InternetAddress('127.0.0.1'), 4041);
              });
            }
              """),
          ],
        ),
      ),
    );
  }
}