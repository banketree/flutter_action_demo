// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CanvasDemoPage extends StatefulWidget {
  const CanvasDemoPage({Key? key}) : super(key: key);

  @override
  CanvasDemoPageState createState() => CanvasDemoPageState();
}

class CanvasDemoPageState extends State<CanvasDemoPage> {
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
          children:  [
            const Text("""
                Canvas	介绍
                
                canvas是2d绘制引擎，所以它的绘制是建立在一个基本的坐标系中的
                const CustomPaint({
                    Key? key,
                    this.painter,
                    this.foregroundPainter,
                    this.size = Size.zero,
                    this.isComplex = false,
                    this.willChange = false,
                    Widget? child,
                  })
                  painter:绘制的对象，是一个CustomPainter。它的绘制是在child之前。如果设置了child，该painter绘制的内容会被覆盖。
                  foregroundPainter:绘制的对象，是一个CustomPainter。它的绘制是在child之后。如果设置了child，该painter绘制的内容会覆盖child。
                  size: 画板大小，如果定义了child，则会以child的尺寸为准
                  isComplex: 默认值是false，定义绘制内容是否复杂，如果为true，会对canvas的绘制进行一些必要的缓存来优化性能
                  willChange: 默认值是false，配合isComplex使用，控制组件是否在下一帧需要重绘
                  child: 子节点，可以不设置
                  
                  Paint类提供了很多属性，上面只是一些常用属性，下面介绍它的所有属性
                  
                  isAntiAlias: 是否抗锯齿
                  color: 画笔颜色
                  strokeWidth: 画笔宽度 - style: 样式
                  PaintingStyle.fill 默认 填充
                  PaintingStyle.stroke 线
                  strokeCap: 定义画笔端点形状
                  StrokeCap.butt 无形状(默认)
                  StrokeCap.round 圆形
                  StrokeCap.square 正方形
                  strokeJoin: 定义线段交接时的形状
              """),
            _buildCanvas(),
            const Text("""
                CircleProgressBarPainter	介绍
              """),
            _buildCircleProgressBarPainter(),
            const Text("""
                PainterPath	介绍
              """),
            _buildPainterPath(),
            const Text("""
                PainterSketch	介绍
              """),
            _buildPainterSketch(),
          ],
        ),
      ),
    );
  }

   _buildCanvas() {
    return Container(
        alignment: Alignment.center,
        child: CustomPaint(
          painter: Sky(),
          child: Center(
            child: Text(
              'Once upon a time...',
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
        )
    );
  }

   _buildCircleProgressBarPainter() {
    return ButtonBar();
  }

   _buildPainterPath() {
    return ButtonBar();
  }

   _buildPainterSketch() {
    return ButtonBar();
  }
}

class Sky extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;
    var gradient = RadialGradient(
      center: const Alignment(0.7, -0.6),
      radius: 0.2,
      colors: [const Color(0xFFFFFF00), const Color(0xFF0099FF)],
      stops: [0.4, 1.0],
    );
    canvas.drawRect(
      rect,
      Paint()..shader = gradient.createShader(rect),
    );
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) {
      // Annotate a rectangle containing the picture of the sun
      // with the label "Sun". When text to speech feature is enabled on the
      // device, a user will be able to locate the sun on this picture by
      // touch.
      var rect = Offset.zero & size;
      var width = size.shortestSide * 0.4;
      rect = const Alignment(0.8, -0.9).inscribe(Size(width, width), rect);
      return [
        CustomPainterSemantics(
          rect: rect,
          properties: SemanticsProperties(
            label: 'Sun',
            textDirection: TextDirection.ltr,
          ),
        ),
      ];
    };
  }

  // Since this Sky painter has no fields, it always paints
  // the same thing and semantics information is the same.
  // Therefore we return false here. If we had fields (set
  // from the constructor) then we would return true if any
  // of them differed from the same fields on the oldDelegate.
  @override
  bool shouldRepaint(Sky oldDelegate) => false;
  @override
  bool shouldRebuildSemantics(Sky oldDelegate) => false;
}