// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class PickerDemoPage extends StatefulWidget {
  const PickerDemoPage({Key? key}) : super(key: key);

  @override
  PickerDemoPageState createState() => PickerDemoPageState();
}

class PickerDemoPageState extends State<PickerDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Picker Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                CityPicker属性	介绍
              """),
            buildCityPicker(),
            const Text("""
                DayPicker属性	介绍
                
                showDatePicker、showTimePicker 是 flutter 提供的日期选择器弹框。
                CalendarDatePicker 是替代 YearPicker、MonthPicker、DayPicker 的新的日期选择控件。
                CupertinoDatePicker、CupertinoTimerPicker 是 iOS 风格的 DatePickerView 和 TimePickerView 的日期时间选择器。
                
                showDatePicker属性	介绍
                context	@required BuildContext，上下文 context
                initialDate	@required DateTime，日历初始化日期
                2020-10-12 蓝色圆框.png
                firstDate	@required DateTime，日历开始日期
                lastDate	@required DateTime，日历结束日期
                currentDate	DateTime 当前日期
                2020-10-20 蓝边圆圈.png
                initialEntryMode	DatePickerEntryMode.calendar 与 input 两种，分别为选择器和填写框
                selectableDayPredicate	(DateTime dayTime){ return true;} 一个返回 bool 值的函数，自定义哪些可选，下文会详解
                helpText	左上角文字
                helpText.png
                cancelText	取消按钮文字
                cancelText.png
                confirmText	确认按钮文字，上图中 confirmText
                locale	地区设置，以后多语言部分在详解
                useRootNavigator	是否使用根导航，默认为 true，官方文档也没做详解，暂时没用到
                routeSettings	路由设置，官方文档也没做详解，暂时没用到
                textDirection	文字方向，TextDirection，DatePickerEntryMode.input 模式时，居左或者居右设置
                builder	创建器，和直接创建基本一致，可以定制主题
                initialDatePickerMode	DatePickerMode.day 与 DatePickerMode.year 两种
                errorFormatText	格式错误是下方提示
                errorFormatText.png
                fieldHintText	输入框默认提示语
                fieldLabelText	输入框上方提示语
                errorInvalidText	输入了不在 first 与 last 之间的日期提示语
                errorInvalidText.png
                showTimePicker属性	介绍
                context	@required BuildContext 上下文
                initialTime	@required TimeOfDay 设置默认日期
                builder	创建器，和直接创建基本一致，可以定制主题
                initialEntryMode	默认为 TimePickerEntryMode.dial。input 样式其实就是收起后的样子
                helpText	左上角文字
                helpText.png
                cancelText	取消按钮文字
                cancelText.png
                confirmText	确认按钮文字，上图中 confirmText
                useRootNavigator	是否使用根导航，默认为 true，官方文档也没做详解，暂时没用到
                routeSettings	路由设置，官方文档也没做详解，暂时没用到
                CalendarDatePicker属性	介绍
                initialDate	@required DateTime 初始化选中日期
                firstDate	@required DateTime 最小可选日期
                lastDate	@required DateTime 最大可选日期
                currentDate	DateTime 当前选中日期
                onDateChanged	@required 选中日期改变回调函数
                onDisplayedMonthChanged	月份改变回调函数
                initialCalendarMode	DatePickerMode.day 日期选择器样式
                selectableDayPredicate	筛选日期可不可点回调函数
                CupertinoTimerPicker属性	介绍
                mode	展示模式，默认为 CupertinoTimerPickerMode.hms
                initialTimerDuration	默认选中事时间，默认为 Duration.zero
                minuteInterval	分钟间隔
                secondInterval 秒间隔
                alignment | 对齐方式
                backgroundColor | 背景颜色
                onTimerDurationChanged | @required 滑动后，每次改变回调函数
                
                CupertinoDatePicker属性 | 介绍
                mode | 展示模式, 默认为 CupertinoDatePickerMode.dateAndTime,
                onDateTimeChanged | @required 日期改变回调函数
                initialDateTime | DateTime 默认选中日期
                minimumDate | 最小可选日期
                maximumDate | 最大可选日期
                minimumYear | 最小可选年份
                maximumYear | 最大可选年份
                minuteInterval | 分钟间隔
                use24hFormat | 是否使用24小时制
                backgroundColor | 背景色
              """),
            buildDayPicker(),
            const Text("""
                MonthPicker属性	介绍
              """),
            buildMonthPicker(context),
            const Text("""
                ShowDatePicker属性	介绍
              """),
            buildShowDatePicker(context),
            const Text("""
                YearPicker属性	介绍
              """),
            buildYearPicker(context),
          ],
        ),
      ),
    );
  }

  buildCityPicker() {
    return Container(
      color: Colors.green,
      width: 100,
      height: 100,
    );
  }

  buildDayPicker() {
    return RaisedButton(
      child: Text("showDatePicker"),
      onPressed: (){
        showDatePicker(
            context: context,
            initialDate: DateTime.now(), // 初始化选中日期
            firstDate: DateTime(2020, 6),  // 开始日期
            lastDate: DateTime(2028, 6),  // 结束日期
            // initialEntryMode: DatePickerEntryMode.input,  // 日历弹框样式

            textDirection: TextDirection.ltr,  // 文字方向

            currentDate: DateTime(2020, 10, 20),  // 当前日期
            helpText: "helpText", // 左上方提示
            cancelText: "cancelText",  // 取消按钮文案
            confirmText: "confirmText",  // 确认按钮文案

            errorFormatText: "errorFormatText",  // 格式错误提示
            errorInvalidText: "errorInvalidText",  // 输入不在 first 与 last 之间日期提示

            fieldLabelText: "fieldLabelText",  // 输入框上方提示
            fieldHintText: "fieldHintText",  // 输入框为空时内部提示

            initialDatePickerMode: DatePickerMode.day, // 日期选择模式，默认为天数选择
            useRootNavigator: true, // 是否为根导航器
            // 设置不可选日期，这里将 2020-10-15，2020-10-16，2020-10-17 三天设置不可选
            selectableDayPredicate: (dayTime){
              if(dayTime == DateTime(2020, 10, 15) || dayTime == DateTime(2020, 10, 16) || dayTime == DateTime(2020, 10, 17)) {
                return false;
              }
              return true;
            }
        );
      },
    );
  }

  buildMonthPicker(context){
    return RaisedButton(
      child: const Text("showDatePicker - YearMode"),
      onPressed: (){
        showDatePicker(
          context: context,
          initialDate: DateTime.now(), // 初始化选中日期
          firstDate: DateTime(2018, 6),  // 开始日期
          lastDate: DateTime(2025, 6),  // 结束日期
          currentDate: DateTime(2020, 10, 20),  // 当前日期
          helpText: "helpText", // 左上方提示
          cancelText: "cancelText",  // 取消按钮文案
          confirmText: "confirmText",  // 确认按钮文案

          initialDatePickerMode: DatePickerMode.year, // 日期选择模式，默认为天数选择
        );
      },
    );
  }

  buildShowDatePicker(context){
    return RaisedButton(
      child: const Text("showTimePicker - InputMode"),
      onPressed: (){
        showTimePicker(
            context: context,
            initialTime: TimeOfDay(hour: 10, minute: 30),
            cancelText: "cancelText",
            helpText: "helpText",
            confirmText: "confirmText"
        );
      },
    );
  }

  buildYearPicker(context){
    return RaisedButton(
      child: const Text("showDatePicker - InputMode"),
      onPressed: (){
        showDatePicker(
          context: context,
          builder: (context, child) {
            return Theme(
              data: ThemeData(
                cardColor: Colors.red,
                brightness: Brightness.dark,
              ),
              child: Container(),
            );
          },
          initialDate: DateTime.now(), // 初始化选中日期
          firstDate: DateTime(2018, 6),  // 开始日期
          lastDate: DateTime(2025, 6),  // 结束日期
          currentDate: DateTime(2020, 10, 20),  // 当前日期
          helpText: "helpText", // 左上方提示
          cancelText: "cancelText",  // 取消按钮文案
          confirmText: "confirmText",  // 确认按钮文案
          initialDatePickerMode: DatePickerMode.year, // 日期选择模式，默认为天数选择
        );
      },
    );
  }
}
