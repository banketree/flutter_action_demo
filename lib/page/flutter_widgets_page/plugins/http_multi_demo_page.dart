import 'package:flutter/material.dart';

class HttpMultiDemoPage extends StatefulWidget {
  const HttpMultiDemoPage({Key? key}) : super(key: key);

  @override
  HttpMultiDemoPageState createState() => HttpMultiDemoPageState();
}

class HttpMultiDemoPageState extends State<HttpMultiDemoPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Http multi server Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
              """),
            _build(),
          ],
        ),
      ),
    );
  }

  _build() {
    return Container();
  }
}
