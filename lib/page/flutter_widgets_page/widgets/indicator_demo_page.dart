import 'package:flutter/material.dart';

class IndicatorDemoPage extends StatefulWidget {
  const IndicatorDemoPage({Key? key}) : super(key: key);

  @override
  IndicatorDemoPageState createState() => IndicatorDemoPageState();
}

class IndicatorDemoPageState extends State<IndicatorDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indicator Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                CircularProgressIndicator属性	介绍
                
                strokeWidth:用于绘制圆的线条的宽度。
                backgroundColor:背景颜色。
                value:如果为非null，则该进度指示器的值为0.0，对应于没有进度，1.0对应于所有进度。
                valueColor：动画的颜色值。
              """),
            _buildCircularProgressIndicator(),
            const Text("""
                LinearProgressIndicator属性	介绍
              """),
            _buildLinearProgressIndicator(),
            const Text("""
                RefreshProgressIndicator属性	介绍
                
                    Key key,
                // [0，1] 的浮点数，用来表示进度多少，0 表示无进度，1 表示进度已完成。
                // 如果 value 为 null，则显示一个动画，否则显示一个定值 
                double value,
                // 进度条背景颜色，默认颜色 ThemeData.backgroundColor
                Color backgroundColor,
                // Animation 类型的参数，用来设定进度值的颜色，默认颜色 ThemeData.accentColor，如果想自定义颜色，
                // 则使用 AlwaysStoppedAnimation<Color>(color)
                Animation<Color> valueColor,
                // 用于画圆的线的宽度，默认为 2
                double strokeWidth = 2.0, 
                String semanticsLabel,
                String semanticsValue,
              """),
          ],
        ),
      ),
    );
  }

  _buildCircularProgressIndicator() {
    return const CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
    );
  }

  _buildLinearProgressIndicator() {
    return const LinearProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
    );
  }

  _buildRefreshProgressIndicator() {
    return const RefreshProgressIndicator(
      value: 0.5,
      backgroundColor: Colors.black, // 背景色为黑色
      valueColor: AlwaysStoppedAnimation<Color>(Colors.pink), // 进度值颜色为粉色
    );
  }
}
