import 'package:flutter/material.dart';

class CardDemoPage extends StatefulWidget {
  const CardDemoPage({Key? key}) : super(key: key);

  @override
  CardDemoPageState createState() => CardDemoPageState();
}

class CardDemoPageState extends State<CardDemoPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                Card介绍
                一个 Material Design 卡片。拥有一个圆角和阴影
                
                2.Card属性
                color：背景色
                shadowColor：阴影色
                elevation：阴影
                shape：形状
                margin：外边距
                clipBehavior：狂锯齿等属性
                child：子节点
              """),
            _myCard(),
          ],
        ),
      ),
    );
  }

  _myCard() {
    return Card(
      color: Colors.grey,
      shadowColor: Colors.amber,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(10),
        child: const Text(
          'Card',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
