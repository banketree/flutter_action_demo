import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class HttpDemoPage extends StatefulWidget {
  const HttpDemoPage({Key? key}) : super(key: key);

  @override
  HttpDemoPageState createState() => HttpDemoPageState();
}

class HttpDemoPageState extends State<HttpDemoPage>
    with TickerProviderStateMixin {
  String content = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Http Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("""
            $content
              """),
            _buildHttp(),
          ],
        ),
      ),
    );
  }

  _buildHttp() {
    return TextButton(onPressed: testHttp, child: Text("test http get"));
  }

  void testHttp() async {
    var url = Uri.https('www.baidu.com', '', {});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      content = "${response.body}.";
    } else {
      content = "Request failed with status: ${response.statusCode}.";
    }

    setState(() {});
  }

  _getHttpData2() async {
    var url = 'https://www.baidu.com';
    var httpClient = HttpClient();
    String result;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json); //此时的data就是服务器返回的一整条json
        result = data['msg']; //获取里面的msg
      } else {
        result =
            'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }
    if (!mounted) return;
    setState(() {});
  }
}

class TestBean {}
