// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SliderBarDemoPage extends StatefulWidget {
  const SliderBarDemoPage({Key? key}) : super(key: key);

  @override
  BSliderBarDemoPageState createState() => BSliderBarDemoPageState();
}

class BSliderBarDemoPageState extends State<SliderBarDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                Slider	介绍
                value	@required 当前 Slider 滑块位置的值，注意不可以超出 min 和 max 的范围，否则会报错
                onChanged	@required 正在滑动或者点击，未松手
                onChangeStart	刚开始点击
                onChangeEnd	滑动或者点击结束，已松手
                min	最小值，默认为 0.0
                max	最大值，默认为 1.0
                label	气泡文本
                divisions	刻度数量，没有刻度时，label 不展示
                mouseCursor	鼠标光标
                activeColor	滑块颜色
                inactiveColor	轨道颜色
                semanticFormatterCallback	语义标签回调
                focusNode	焦点控制，Flutter 组件之 FocusNode 详解
                autofocus	自动聚焦，默认为 false
              """),
            _buildSlider(),
            const Text("""
                SliderThemeData	介绍
                
                trackHeight | 轨道高度
                activeTrackColor | 滑块左侧轨道颜色，
                
                inactiveTrackColor | 滑块右侧侧轨道颜色，
                
                disabledActiveTrackColor | slider 不可用（onChanged = null）时，滑块左侧轨道颜色，位置与 activeTrackColor 相同
                disabledInactiveTrackColor | slider 不可用（onChanged = null）时，滑块右侧轨道颜色，位置与 inactiveTrackColor 相同
                activeTickMarkColor | 滑块左侧刻度颜色，
                
                inactiveTickMarkColor | 滑块右侧刻度颜色，
                
                disabledActiveTickMarkColor | slider 不可用（onChanged = null）时，滑块左侧刻度颜色，位置与 activeTickMarkColor 相同
                disabledInactiveTickMarkColor | slider 不可用（onChanged = null）时，滑块右侧刻度颜色，位置与 inactiveTickMarkColor 相同
                thumbColor | 滑块颜色
                overlappingShapeStrokeColor | 滑块按下去时周边绘制颜色，很少用
                disabledThumbColor | slider 不可用（onChanged = null）时，滑块颜色
                overlayColor | 滑块按下去时周边颜色，
                
                valueIndicatorColor | 刻度气泡颜色，
                overlayShape | 滑块按下形状，很少用
                tickMarkShape | 刻度形状
                thumbShape | 滑块形状
                trackShape | 轨道形状
                valueIndicatorShape | 气泡颜色，
                
                rangeTickMarkShape | RangeSlider 刻度形状
                rangeThumbShape | RangeSlider 滑块形状
                rangeTrackShape | RangeSlider 轨道形状
                rangeValueIndicatorShape | RangeSlider 气泡形状
                showValueIndicator | 气泡显示方式，默认为 ShowValueIndicator.onlyForDiscrete
                valueIndicatorTextStyle | 气泡文本TextStyle
                minThumbSeparation | RangeSlider 的 start 和 end 最小间隔
                thumbSelector | RangeSlider 滑块选择器，默认选择最近的，可以通过这个自定义，例如点击轨道中间左侧的点就选择左侧滑块改变 start 值，点击轨道中间点右侧，就选择 end 值。
              """),
            _buildSliderThemeData(),
          ],
        ),
      ),
    );
  }

  double sliderValue = 0;

  _buildSlider() {
    return Slider(
      value: sliderValue,
      max: 100,
      onChanged: (value) {
        print("onChanged : $value");
        setState((){
          sliderValue = value;
        });
      },
      onChangeStart: (value) {
        print("onChangeStart : $value");
      },
      onChangeEnd: (value) {
        print("onChangeEnd : $value");
      },
    );
  }

  _buildSliderThemeData() {
    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 20,
        activeTrackColor: Colors.red,
        inactiveTrackColor: Colors.grey,
        disabledActiveTrackColor: Colors.yellow,
        disabledInactiveTrackColor: Colors.cyan,
        activeTickMarkColor: Colors.black,
        inactiveTickMarkColor: Colors.red,
        overlayColor: Colors.yellow,
        overlappingShapeStrokeColor: Colors.black,
        overlayShape: RoundSliderOverlayShape(),
        valueIndicatorColor: Colors.red,
        showValueIndicator: ShowValueIndicator.onlyForDiscrete,
        minThumbSeparation: 100,
        rangeTrackShape: RoundedRectRangeSliderTrackShape(),
      ),
      child: Slider(
        value: sliderValue,
        min: 0,
        max: 100,
        divisions: 10,
        label: "气泡",
        onChanged: (value) {
          print("SliderTheme onChanged : $value");
          setState((){
            sliderValue = value;
          });
        },
        onChangeStart: (value) {},
      ),
    );
  }
}
