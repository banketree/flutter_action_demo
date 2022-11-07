// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class StackDemoPage extends StatefulWidget {
  const StackDemoPage({Key? key}) : super(key: key);

  @override
  StackDemoPageState createState() => StackDemoPageState();
}

class StackDemoPageState extends State<StackDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                Stack	介绍
                
                Stack 组件是一种层叠式布局，即组件覆盖另一个组件，覆盖的顺序取决于在children中放置的顺序.
              """),
            _buildStack(),
            const Text("""
                IndexedStack	介绍
                
                alignment 对齐方式
                sizing 填充方式
                index 显示子项索引
                children 子项集合
              """),
            _buildIndexedStack(),
            const Text("""
                Table	介绍
                
                columnWidths这个属性就是对应宽度设置规则的，这个属性对应的值是一个Map类型，key是列的编号，从0开始，value是TableColumnWidth类型的，flutter提供的有6个分别是：IntrinsicColumnWidth、FixedColumnWidth、FractionColumnWidth、FlexColumnWidth、MaxColumnWidth和MinColumnWidth。
                
                IntrinsicColumnWidth代表那一列中以最长一行的宽度为那一列的宽度
                FixedColumnWidth 固定一个宽度，需要传一个值
                FractionColumnWidth 指的是table的最大宽度的一个比例
                FlexColumnWidth这个flex就很好理解了，和Flexible的用法没有区别
                MaxColumnWidth会传进来两个值，取其中大值
                MinColumnWidth会传进来两个值，取其中小值
                defaultColumnWidth这个属性就是在columnWidths没有设置对应列时，即columnWidths[i]是null时，取defaultColumnWidth的值，当然defaultColumnWidth的值类型也是TableColumnWidth的。
                
                textDirection这个属性是文字的排列顺序，不做赘述
                
                border这个属性是定义边框的
                
                TableCellVerticalAlignment这个是定义TableCell的垂直方向的布局的，默认是top，即顶部对齐。示例代码我设置成middle, 才有的水平方向内容居中。
                
                textBaseline 这个是设置文本baseline对齐的时候需要的，值是枚举类型，只有alphabetic(字母类型)和ideographic(表意文字类型)。
              """),
            _buildTable(),
          ],
        ),
      ),
    );
  }

  _buildStack() {
    return Stack(
      alignment: Alignment.center,
      // 设置当前索引
      children: [
        Container(color: Colors.orange,),
        Container(color: Colors.red,),
        Container(color: Colors.blue,),
      ],
    );
  }

  _buildIndexedStack() {
    return IndexedStack(
      alignment: Alignment.center,
      // 设置当前索引
      index: 1,
      children: [
        Container(color: Colors.orange,),
        Container(color: Colors.red,),
        Container(color: Colors.blue,),
      ],
    );
  }

  _buildTable() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      color: Colors.black12,
      child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: {
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth()
          },
          children: _renderList()
      ),
    );
  }

  List<TableRow> _renderList() {
    List titleList = ['aaaaaaaa', 'bbbb', 'ccccccccc', 'ddd', 'ee'];
    List<TableRow> list = [];
    for (var i = 0; i < titleList.length; i++) {
      list.add(
          TableRow(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  child: Text(titleList[i]),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Text(i % 2 == 0 ? 'content' : 'contentcontentcontentcontentcontentcontentcontentcontent'),
                )
              ]
          )
      );
    }
    return list;
  }
}
