import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioDemoPage extends StatefulWidget {
  const DioDemoPage({Key? key}) : super(key: key);

  @override
  DioDemoPageState createState() => DioDemoPageState();
}

class DioDemoPageState extends State<DioDemoPage>
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
        title: const Text("Dio Demo"),
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
            _build(),
          ],
        ),
      ),
    );
  }

  _build() {
    return TextButton(onPressed: getHttp, child: Text("test dio get"));
  }

  void getHttp() async {
    try {
      var response = await Dio().get('http://www.baidu.com');
      if (response.statusCode == 200) {
        content = "${response.data}.";
      } else {
        content = "Request failed with status: ${response.statusCode}.";
      }
    } catch (e) {
      content = e.toString();
    }

    setState(() {});
  }
}
