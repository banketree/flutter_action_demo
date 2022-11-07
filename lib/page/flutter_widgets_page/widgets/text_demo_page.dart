// ignore_for_file: avoid_print

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextDemoPage extends StatefulWidget {
  const TextDemoPage({Key? key}) : super(key: key);

  @override
  TextDemoPageState createState() => TextDemoPageState();
}

class TextDemoPageState extends State<TextDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                Text	介绍
                
                   Text(
                      "Text组件的使用",
                      style: TextStyle(
                          // 文字颜色
                          color: Color(0xfff0000),
                          // none 不显示装饰线条，underline 字体下方，overline 字体上方，lineThrough穿过文字
                          decoration: TextDecoration.none,
                          // solid 直线，double 双下划线，dotted 虚线，dashed 点下划线，wavy 波浪线
                          decorationStyle: TextDecorationStyle.solid,
                          // 装饰线的颜色
                          decorationColor: Colors.red,
                          // 文字大小
                          fontSize: 15.0,
                          // normal 正常，italic 斜体
                          fontStyle: FontStyle.normal,
                          // 字体的粗细
                          fontWeight: FontWeight.bold,
                          // 文字间的宽度
                          letterSpacing: 1.0,
                          // 文本行与行的高度，作为字体大小的倍数（取值1~2，如1.2）
                          height: 1,
                          //对齐文本的水平线:
                          //TextBaseline.alphabetic：文本基线是标准的字母基线
                          //TextBaseline.ideographic：文字基线是表意字基线；
                          //如果字符本身超出了alphabetic 基线，那么ideograhpic基线位置在字符本身的底部。
                          textBaseline: TextBaseline.alphabetic),
                      // 段落的间距样式
                      strutStyle: StrutStyle(
                        fontFamily: 'serif',
                        fontFamilyFallback: ['monospace', 'serif'],
                        fontSize: 20,
                        height: 2,
                        leading: 2.0,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                        forceStrutHeight: true,
                        debugLabel: 'text demo',
                      ),
                      // 文字对齐方式
                      textAlign: TextAlign.center,
                      // 文字排列方向 ltr 左到右，rtl右到左
                      textDirection: TextDirection.ltr,
                      // 用于选择区域特定字形的语言环境
                      locale: Locale('zh_CN'),
                      // 软包裹 ，文字是否应该在软断行出断行
                      softWrap: false,
                      // 如何处理视觉溢出:clip 剪切溢出的文本以修复其容器。ellipsis 使用省略号表示文本已溢出。fade 将溢出的文本淡化为透明。
                      overflow: TextOverflow.clip,
                      // 文字的缩放比例
                      textScaleFactor: 1.0,
                      // 文本要跨越的可选最大行数,
                      maxLines: 2,
                      // 图像的语义描述，用于向Andoid上的TalkBack和iOS上的VoiceOver提供图像描述
                      semanticsLabel: 'text demo',
                      textWidthBasis: TextWidthBasis.longestLine,
                    )
              """),
            _buildText(),
            const Text("""
                RichText	介绍
                
                一个富文本Text，可以显示多种样式的text。这个组件跟Text.rich()差不多
              """),
            _buildRichText(),
            const Text("""
                Align	介绍
                
                alignment属性设置子控件的位置，Alignment中已定义了如下几种位置：
                Alignment.topLeft：顶部左边
                 Alignment.topCenter：顶部中间
                Alignment.topRight：顶部右边
                Alignment.centerLeft：中部左边
                Alignment.center：中部中间
                Alignment.centerRight：中部右边
                Alignment.bottomLeft：底部左边
                Alignment.bottomCenter：底部中间
                Alignment.bottomRight：底部右边
              """),
            _buildAlign(),
          ],
        ),
      ),
    );
  }

  _buildText() {
    return Text(
      "Text组件的使用",
      style: TextStyle(
          // 文字颜色
          color: Color(0xfff0000),
          // none 不显示装饰线条，underline 字体下方，overline 字体上方，lineThrough穿过文字
          decoration: TextDecoration.none,
          // solid 直线，double 双下划线，dotted 虚线，dashed 点下划线，wavy 波浪线
          decorationStyle: TextDecorationStyle.solid,
          // 装饰线的颜色
          decorationColor: Colors.red,
          // 文字大小
          fontSize: 15.0,
          // normal 正常，italic 斜体
          fontStyle: FontStyle.normal,
          // 字体的粗细
          fontWeight: FontWeight.bold,
          // 文字间的宽度
          letterSpacing: 1.0,
          // 文本行与行的高度，作为字体大小的倍数（取值1~2，如1.2）
          height: 1,
          //对齐文本的水平线:
          //TextBaseline.alphabetic：文本基线是标准的字母基线
          //TextBaseline.ideographic：文字基线是表意字基线；
          //如果字符本身超出了alphabetic 基线，那么ideograhpic基线位置在字符本身的底部。
          textBaseline: TextBaseline.alphabetic),
      // 段落的间距样式
      strutStyle: StrutStyle(
        fontFamily: 'serif',
        fontFamilyFallback: ['monospace', 'serif'],
        fontSize: 20,
        height: 2,
        leading: 2.0,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
        forceStrutHeight: true,
        debugLabel: 'text demo',
      ),
      // 文字对齐方式
      textAlign: TextAlign.center,
      // 文字排列方向 ltr 左到右，rtl右到左
      textDirection: TextDirection.ltr,
      // 用于选择区域特定字形的语言环境
      locale: Locale('zh_CN'),
      // 软包裹 ，文字是否应该在软断行出断行
      softWrap: false,
      // 如何处理视觉溢出:clip 剪切溢出的文本以修复其容器。ellipsis 使用省略号表示文本已溢出。fade 将溢出的文本淡化为透明。
      overflow: TextOverflow.clip,
      // 文字的缩放比例
      textScaleFactor: 1.0,
      // 文本要跨越的可选最大行数,
      maxLines: 2,
      // 图像的语义描述，用于向Andoid上的TalkBack和iOS上的VoiceOver提供图像描述
      semanticsLabel: 'text demo',
      textWidthBasis: TextWidthBasis.longestLine,
    );
  }

  _buildRichText() {
    return RichText(
      text: TextSpan(
        text: '登陆即同意',
        style: TextStyle(color: Colors.black),
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Image.asset(
              "",
              width: 40,
              height: 40,
            ),
          ),
          TextSpan(
            text: '《服务条款》',
            style: TextStyle(color: Colors.red),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          TextSpan(
            text: '和',
            style: TextStyle(color: Colors.black),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.bottom,
            child: Image.asset(
              "",
              width: 40,
              height: 40,
            ),
          ),
          TextSpan(
            text: '《隐私政策》',
            style: TextStyle(color: Colors.red),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }

  _buildAlign() {
    return Align(
        alignment: Alignment.centerRight, child: FlutterLogo(size: 60));
  }
}
