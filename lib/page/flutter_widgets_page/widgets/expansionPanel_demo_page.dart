import 'package:flutter/material.dart';

class ExpansionPanelDemoPage extends StatefulWidget {
  const ExpansionPanelDemoPage({Key? key}) : super(key: key);

  @override
  ExpansionPanelDemoPageState createState() => ExpansionPanelDemoPageState();
}

class ExpansionPanelDemoPageState extends State<ExpansionPanelDemoPage> {
  List<bool> dataList = List.generate(20, (index) => false).toList();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExpansionPanel Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
           ExpansionPanelList ：扩展列表组件，类似于ListView
            ExpansionPanel：类似于ListView中子View，有扩展头和折叠部分
            ExpansionPanelList要被SingleChildScrollView包裹，否则抛出如下异常
            
            ExpansionPanelList:
                children：ExpansionPanel面板列表
                expansionCallback：ExpansionPanelCallback面板扩展回调函数
                animationDuration：动画持续时长
                dividerColor：面板分割线颜色
                
            ExpansionPanel:
                headerBuilder：面板头部构建器
                body：面板内容构建
                isExpanded：面板是否扩展
                canTapOnHeader：点击头部能否执行扩展操作
                backgroundColor：面板的背景
              """),
            _buildExpansionPanelList(),
            _buildExpansionPanelRadio()
          ],
        ),
      ),
    );
  }

  _buildExpansionPanelList() {
    return ExpansionPanelList(
        dividerColor: Colors.red,
        animationDuration: const Duration(seconds: 2),
        expansionCallback: (index, isExpanded) {
          setState(() {
            dataList[index] = !isExpanded;
          });
        },
        children: dataList.asMap().entries.map((value) {
          return ExpansionPanel(
              canTapOnHeader: true,
              //backgroundColor: Colors.grey,
              isExpanded: value.value,
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text("扩展列表${value.key}"),
                );
              },
              body: Container(
                height: 100,
                color: Colors.primaries[value.key % 18],
              ));
        }).toList());
  }

  _buildExpansionPanelRadio() {
    return ExpansionPanelList(
        dividerColor: Colors.red,
        animationDuration: const Duration(seconds: 2),
        expansionCallback: (index, isExpanded) {
          setState(() {
            dataList[index] = !isExpanded;
          });
        },
        children: dataList.asMap().entries.map((value) {
          return ExpansionPanelRadio(
              canTapOnHeader: true,
              //backgroundColor: Colors.grey,
              value: value.value,
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text("扩展列表${value.key}"),
                );
              },
              body: Container(
                height: 100,
                color: Colors.primaries[value.key % 18],
              ));
        }).toList());
  }
}
