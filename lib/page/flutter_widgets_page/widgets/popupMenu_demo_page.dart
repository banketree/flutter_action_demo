import 'package:flutter/material.dart';

class PopupMenuDemoPage extends StatefulWidget {
  const PopupMenuDemoPage({Key? key}) : super(key: key);

  @override
  PopupMenuDemoPageState createState() => PopupMenuDemoPageState();
}

class PopupMenuDemoPageState extends State<PopupMenuDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PopupMenu Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                CheckedPopupMenuItem属性	介绍
                
                value：当此项选中后，此值将会通过onSelected返回。
                enabled：此项是否可用。
                height：此项的高度
                textStyle：文本样式
                child：子控件。
              """),
            buildCheckedPopupMenuItem(),
            const Text("""
                DropdownMenuItem属性	介绍
                
                onTap：
                value：当此项选中后，此值将会通过onSelected返回。
                enabled：此项是否可用。
                alignment：AlignmentDirectional.centerStart
                child：子控件。
                
                PopupMenuItem属性
              """),
            const Text("""
                PopupMenuButton属性	介绍
                
                itemBuilder	@required 必填项，配置弹出菜单的子控件
                initialValue	设置弹出菜单的高亮item
                onSelected	点击菜单控件
                onCanceled	取消点击菜单控件
                tooltip	长按时的小提示
                elevation	阴影距离
                padding	外边距，默认 EdgeInsets.all(8.0),
                child	子控件
                icon	图标
                offset	偏移量，默认 Offset.zero,
                enabled	是否可点击，默认为 true,
                shape	边框设置
                color	颜色
                captureInheritedThemes	默认为 true,
              """),
            _popupMenuButton(context),
            const Text("""
                PopupMenuEntry属性	介绍
                
                height
              """),
            _DividerPopMenu(),
          ],
        ),
      ),
    );
  }

  buildCheckedPopupMenuItem() {
    return PopupMenuButton<String>(
      onSelected: (value) {
        print('$value');
      },
      itemBuilder: (context) {
        return <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: '语文',
            enabled: false,
            child: Text('语文'),
          ),
          const PopupMenuItem<String>(
            value: '数学',
            textStyle: TextStyle(color: Colors.red),
            child: Text('数学'),
          ),
          const PopupMenuItem<String>(
            value: '英语',
            height: 100,
            child: Text('英语'),
          ),
        ];
      },
    );
  }

  buildDropdownMenuItem() {
    final List<String> itemsList = ["1", "2", "3", "4", "5", "6"];
    return Container(
      width: 300.0,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          value: itemsList[0],
          items: itemsList
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  ))
              .toList(),
          onChanged: (value) {},
        ),
      ),
    );
  }

  _popupMenuButton(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem(
            value: "dota",
            child: Text("DOTA"),
          ),
          const PopupMenuItem(
            value: ["盖伦", "皇子", "提莫"],
            child: Text("英雄联盟"),
          ),
          const PopupMenuItem(
            value: {"name": "王者荣耀"},
            child: Text("王者荣耀"),
          ),
        ];
      },
    );
  }

  _DividerPopMenu() {
    return PopupMenuButton<String>(
        itemBuilder: (BuildContext context) => const <PopupMenuEntry<String>>[
              PopupMenuItem<String>(value: 'value01', child: Text('Item One')),
              PopupMenuDivider(height: 1.0),
              PopupMenuItem<String>(value: 'value02', child: Text('Item Two')),
              PopupMenuDivider(height: 1.0),
              PopupMenuItem<String>(
                  value: 'value03', child: Text('Item Three')),
              PopupMenuDivider(height: 1.0),
              PopupMenuItem<String>(
                  value: 'value04', child: Text('I am Item Four'))
            ],
        onSelected: (String value) {
          setState(() {
          });
        });
  }
}
