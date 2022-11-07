import 'package:flutter/material.dart';

class CheckDemoPage extends StatefulWidget {
  const CheckDemoPage({Key? key}) : super(key: key);

  @override
  CheckDemoPageState createState() => CheckDemoPageState();
}

class CheckDemoPageState extends State<CheckDemoPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Check Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                CheckBox介绍
                
                value	@required 是否选中
                tristate	三态复选框，默认 false，当设置为 true 时，设置 value = null，复选框中间会变成破折号(-)
                onChanged	@required 点击事件
                mouseCursor	鼠标光标
                activeColor	选中时填充颜色
                checkColor	选中时中间✔️颜色
                focusColor	聚焦颜色
                hoverColor	悬停颜色
                materialTapTargetSize	内边距，默认最小点击区域为 48 * 48，MaterialTapTargetSize.shrinkWrap 为组件实际大小
                visualDensity	布局紧凑设置
                focusNode	焦点控制，Flutter 组件之 FocusNode 详解
                autofocus	自动聚焦，默认为 false
              """),
            _CheckBox(),
            const Text("""
                CheckBoxListTile介绍
                
                title	widget	设置主标题组件
                subtitle	Widget	设置副标题组件
                isThreeLine	bool	设置显示的复选框是否占三行,默认值为false
                dense	bool	设置是否垂直密集显示标题
                secondary	widget	设置显示的小组件,与□所在位置相反
                selected	bool	设置选中后标题文字高亮，默认值为 false
                controlAffinity	ListTileControlAffinity	设置□相对于标题文字的位置,取值包含leading(前面)、platform (后面)和trailing(后面)
              """),
            _CheckBoxListTile(),
            const Text("""
                TextField介绍
                
                controller	控制器，可以控制 textField 的输入内容，也可以监听 textField 改变
                focusNode	焦点控制，Flutter 组件之 FocusNode 详解
                decoration	textField 装饰，Flutter 组件之 InputDecoration 详解
                keyboardType	TextInputType，键盘类型
                textInputAction	键盘完成按钮样式
                textCapitalization	大小写，默认为 TextCapitalization.none
                style	字体样式
                strutStyle	字体的布局样式，有兴趣的可以了解
                textAlign	文字对齐方式，默认为 TextAlign.start
                textAlignVertical	文字纵轴对齐方式
                textDirection	TextDirection.ltr 是居左，TextDirection.rtl 是居右，和 textAlign 效果一致
                readOnly	只读属性，默认为 false
                toolbarOptions	长按时弹出的按钮设置，（如赋值，粘贴，全部选中等）
                showCursor	是否显示光标，默认为 true
                autofocus	是否自动聚焦，默认为 false
                obscuringCharacter	加密输入时的替换字符，默认为 '•'
                obscureText	是否加密，默认为 false
                autocorrect	是否自动更正，默认为 true
                smartDashesType	SmartDashesType 智能替换破折号，例如连续输入三个'-' 会自动替换成一个'——'，当 obseretext == true 时，smartDashesType 默认不可用
                smartQuotesType	SmartQuotesType 智能替换引号，根据文字情况智能替换为左引号或者右引号，当 obseretext == true 时，SmartQuotesType 默认不可用
                enableSuggestions	是否在用户输入时显示输入建议，此标志仅影响Android，默认为 true
                maxLines	最大行数
                minLines	最小行数
                expands	是否填充父控件，默认为 false
                maxLength	最大长度
                maxLengthEnforced	是否强制限制，或者只提供字符计数器和警告，默认为 true
                onChanged	输入框文字改变回调
                onEditingComplete	输入框完成回调
                onSubmitted	提交按钮点击回调
                inputFormatters	格式化输入，注意这里比 onChanged 先执行
                enabled	是否可用
                cursorWidth	光标宽度，默认为 2.0
                cursorRadius	光标圆角
                cursorColor	光标颜色
                selectionHeightStyle	选中高度样式，默认为 ui.BoxHeightStyle.tight
                selectionWidthStyle	选中宽度样式，默认为 ui.BoxWidthStyle.tight
                keyboardAppearance	键盘外观，此设置仅适用于iOS设备，iOS的白色以及黑色风格键盘
                scrollPadding	滚动后距离边缘的距离，默认为 EdgeInsets.all(20.0)
                dragStartBehavior	启动阻力，默认为 DragStartBehavior.start
                enableInteractiveSelection	///默认为True，如果为false，则大多数辅助功能支持选择文本、复制和粘贴，移动插入符号将被禁用。
                onTap	点击事件
                mouseCursor	鼠标悬停，Web可以了解
                buildCounter	InputDecorator.counter 自定义小工具
                scrollController	滚动控制器
                scrollPhysics	滚动物理效果
                autofillHints	自动填充
              """),
            _buildTextField(),
            Text("""
            Radio
            
            value	@required 是否选中
            groupValue	@required
            onChanged	@required 点击事件
            mouseCursor	鼠标光标
            toggleable
            activeColor	选中时填充颜色
            focusColor	聚焦颜色
            hoverColor	悬停颜色
            materialTapTargetSize	内边距，默认最小点击区域为 48 * 48，MaterialTapTargetSize.shrinkWrap 为组件实际大小
            visualDensity	布局紧凑设置
            focusNode	焦点控制，Flutter 组件之 FocusNode 详解
            autofocus	自动聚焦，默认为 false
            """),
            _buildRadio(),
            Text("""
            RadioListTile
            
            value	见radio属性简介
            groupValue	见radio属性简介
            onChanged	见radio属性简介
            activeColor	见radio属性简介
            title	标题
            subtitle	二级标题
            isThreeLine	是否三行显示
            true ： 副标题 不能为 null
            dense	是否密集垂直
            secondary	配置图标或者图片
            selected	text 和 icon 的 color 是否 是 activeColor 的颜色
            controlAffinity	控件相对于文本的位置
            ListTileControlAffinity.platform 根据不同的平台，来显示 对话框 的位置
            ListTileControlAffinity.trailing：勾选在右，title 在中，secondary 在左
            ListTileControlAffinity.leading ：勾选在左，title 在中，secondary 在右
            """),
            _buildRadioListTile(),
          ],
        ),
      ),
    );
  }

  bool checkboxSelected = true;

  _CheckBox() {
    return Checkbox(
        value: checkboxSelected,
        onChanged: (value) {
          checkboxSelected = !checkboxSelected;
          setState(() {});
        });
  }

  List flag = [false, false, false];
  List select = ['皇后', '华妃', '甄嬛'];

  _CheckBoxListTile() {
    return Column(
      children: <Widget>[
        CheckboxListTile(
          value: this.checkboxSelected,
          /*设置主标题组件*/
          title: Text(
            '全选',
            style: TextStyle(color: Colors.red),
          ),
          /*设置副标题组件*/
          subtitle: Text('全选表示自成一派'),
          /*设置显示的小组件,与□所在位置相反*/
          secondary: Icon(Icons.flag),
          /*调整复选框和图标的位置*/
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? value) {
            setState(() {
              checkboxSelected = value!;
            });
          },
        ),
        CheckboxListTile(
            title: Text(select[0]),
            subtitle: Text('堕胎小分队'),
            secondary: Icon(Icons.info),
            /*调整复选框和图标的位置*/
            controlAffinity: ListTileControlAffinity.leading,
            value: flag[0],
            onChanged: (value) {
              setState(() {
                flag[0] = value;
              });
            }),
        CheckboxListTile(
            title: Text(select[1]),
            subtitle: Text('世兰好苦队'),
            secondary: Icon(Icons.info),
            /*调整复选框和图标的位置*/
            controlAffinity: ListTileControlAffinity.leading,
            value: flag[1],
            onChanged: (value) {
              setState(() {
                flag[1] = value;
              });
            }),
        CheckboxListTile(
            title: Text(select[2]),
            subtitle: Text('莞莞类卿队'),
            secondary: Icon(Icons.info),
            /*调整复选框和图标的位置*/
            controlAffinity: ListTileControlAffinity.leading,
            value: flag[2],
            onChanged: (value) {
              setState(() {
                flag[2] = value;
              });
            }),
      ],
    );
  }

  _buildTextField() {
    return TextField(
      controller: _controller(),
      decoration: _normalDecoration(),
      onChanged: (string) {
        print("onChanged $string");
      },
      onSubmitted: (string) {
        print("onSubmitted $string");
      },
      onEditingComplete: () {
        print("onEditingComplete");
      },
      onTap: () {
        print("onTap");
      },
    );
  }

  TextEditingController _controller() {
    TextEditingController _controller = TextEditingController(
      text: "123333",
    );
    _controller.addListener(() {
      print(_controller.text);
    });
    return _controller;
  }

  InputDecoration _normalDecoration() {
    return InputDecoration(
      filled: true,
      fillColor: Colors.lightBlue.shade100,
      prefixIcon: Icon(Icons.phone),
      prefixText: "+86 ",
      prefixStyle: TextStyle(color: Colors.orange, fontSize: 18),
      hintText: "请输入手机号",
      suffixIcon: Icon(Icons.clear),
    );
  }

  List<FMRadioModel> _datas = [];
  int groupValue = 1;

  _buildRadio() {
    _datas.add(FMRadioModel(1, "游戏"));
    _datas.add(FMRadioModel(2, "社交"));
    _datas.add(FMRadioModel(3, "购物"));
    _datas.add(FMRadioModel(4, "娱乐"));
    _datas.add(FMRadioModel(5, "影视"));
    return Container(
      height: 300,
      child: ListView.builder(
          itemCount: _datas.length,
          itemBuilder: (context, index) {
            FMRadioModel model = _datas[index];
            return _buildRow(model);
          }),
    );
  }

  Row _buildRow(FMRadioModel model) {
    return Row(
      children: [_radio(model), Text("${model.text}")],
    );
  }

  Radio _radio(FMRadioModel model) {
    return Radio(
        value: model.index,
        groupValue: groupValue,
        onChanged: (index) {
          groupValue = index;
          print(index);
          setState(() {});
        });
  }

  _buildRadioListTile() {
    return Container(
      child: Column(
        children: [
          RadioListTile(
              secondary: Icon(Icons.watch),
              value: "语文",
              selected: true,
              activeColor: Colors.red,
              groupValue: groupValue,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("语文"),
              subtitle: Text("我是语文"),
              onChanged: (value) {
                setState(() {
                  var groupValue = value;
                });
              }),
          RadioListTile(
              value: "数学",
              title: Text("数学"),
              subtitle: Text("我是数学"),
              activeColor: Colors.red,
              secondary: Icon(Icons.watch),
              controlAffinity: ListTileControlAffinity.trailing,
              groupValue: groupValue,
              onChanged: (value) {
                setState(() {
                  var groupValue = value;
                });
              }),
          RadioListTile(
              value: "英语",
              title: Text("英语"),
              subtitle: Text("我是英语"),
              secondary: Icon(Icons.watch),
              controlAffinity: ListTileControlAffinity.platform,
              activeColor: Colors.red,
              groupValue: groupValue,
              onChanged: (value) {
                setState(() {
                  var groupValue = value;
                });
              }),
        ],
      ),
    );
  }
}

class FMRadioModel extends Object {
  int index;
  String text;

  FMRadioModel(this.index, this.text);
}
