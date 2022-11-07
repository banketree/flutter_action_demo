import 'package:flutter/material.dart';

class GridDemoPage extends StatefulWidget {
  const GridDemoPage({Key? key}) : super(key: key);

  @override
  GridDemoPageState createState() => GridDemoPageState();
}

class GridDemoPageState extends State<GridDemoPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                GridPaper介绍
                child → Widget 子widget
                color → Color 网格颜色
                divisions → int 主网格单元内分区数,默认值2
                interval → double 网格中线的距离单位,以像素为单位,默认值100.0
                subdivisions → int 主网格中小网格的数,默认值5
              """),
            const Text("""
                GridTile介绍
                GridTile主要作为GridView子child,提供丰富的页眉和页脚;
                header → Widget 页眉
                footer → Widget 页脚
                child → Widget 子widget
              """),
            const Text("""
                GridTileBar介绍
                GridTileBar通常用来做GridTile的header或footer组件;
                backgroundColor → Color 背景颜色
                leading → Widget 标题前显示的小组件,通常是一个icon
                title → Widget 标题
                subtitle → Widget 子标题
                trailing → Widget 标题后显示的小组件,通常是icon或者iconButton
              """),
            const Text("""
                GridVIew介绍
                GirdView的item展现形式,会在item控件上层浮现网格,用于WidgetApp视图开发,其实在MaterialApp中把debugShowMaterialGird开启,也是默认显示GridPaper;
              """),
            _contentWidget(),
          ],
        ),
      ),
    );
  }

  _contentWidget() {
    return Container(
     height: 800.0,
//      width: 300.0,
      color: Colors.grey,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 4.0,
        padding: const EdgeInsets.all(10.0),
        childAspectRatio: 1.3,
        children: <Widget>[
          GridTile(
            header: const GridTileBar(
              title: Text('title'),
              subtitle: Text('subtitle'),
              leading: Icon(Icons.add),
              trailing: Text("trailing"),
            ),
            child: Container(),
            footer: Text('footer'),
          ),
          GridPaper(
            interval: 1.0,
            divisions: 1,
            subdivisions: 1,
            color: Colors.red,
            child: Image.network(
                'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
                scale: 1,
                fit: BoxFit.cover),
          ),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
        ],
      ),
    );
  }
}
