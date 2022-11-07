// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class ImageDemoPage extends StatefulWidget {
  const ImageDemoPage({Key? key}) : super(key: key);

  @override
  ImageDemoPageState createState() => ImageDemoPageState();
}

class ImageDemoPageState extends State<ImageDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("""
                AssetImage	介绍
                
                Flutter 使用资源文件，必须依赖 pubspec.yaml 文件。
              """),
            _buildAssetImage(),
            const Text("""
                DecorationImage	介绍
              """),
            _buildDecorationImage(),
            const Text("""
                DecorationImagePainter	介绍
              """),
            _buildDecorationImagePainter(),
            const Text("""
                ExactAssetImage	介绍
              """),
            _buildExactAssetImage(),
            const Text("""
                FadeInImage	介绍
              """),
            _buildFadeInImage(),
            const Text("""
                FileImage	介绍
                
                ResizeImage(FileImage(File("aaa/bbb.jpg")), width: 30)
              """),
            _buildFileImage(),
            const Text("""
                Image	介绍
                
                Image：通过ImageProvider来加载图片
                Image.asset：用来加载本地资源图片
                Image.file：用来加载本地（File文件）图片
                Image.network：用来加载网络图片
                Image.memory：用来加载Uint8List资源（byte数组）图片
              """),
            _buildImage(),
            const Text("""
                MemoryImage	介绍
                
                MemoryImage 的构造函数只有一个必填参数：bytes，类型为 Unit8List。它包含要解码成 image 的字节。另一个是可选的，是一个 double 值的 scale，使用 scale 来表示图像的大小。
                Uint8List bytes* : 图像数据。
                Key key: 小部件键，用于控制是否应更换。
                double scale: 如何缩放图像。默认为 1.0。
                ImageFrameBuilder frameBuilder：负责创建代表此图像的小部件的构建器函数。
                String semanticLabel：图像的语义描述。
                bool excludeFromSemantics: 是否从语义中排除此图像。默认为false.
                double width：图像的高度。
                double height：图像的高度。
                Color color：根据colorBlendMode值与图像混合的颜色。
                BlendMode colorBlendMode：如何将颜色与图像结合起来。
                BoxFit fit：如何将图像写入布局期间分配的空间。
                AlignmentGeometry alignment：如何在其边界内对齐图像。
                ImageRepeat repeat：如何绘制图像未覆盖的布局边界的任何部分。
                Unit8List bytes*：图像数据。
                Rect centerSlice：九块图像的中心切片。
                bool matchTextDirection: 是否使用 的值TextDirection来绘制图像。默认为false.
                bool gaplessPlayback：当图片提供者改变时是否继续显示旧图片。默认为false.
                FilterQuality filterQuality:FilterQuality图片的。默认为FilterQuality.low.
                int cacheWidth: 表示必须以指定的宽度对图像进行解码。
                int cacheHeight：表示必须在指定高度解码图像。
              """),
            _buildMemoryImage(),
            const Text("""
                NetworkImage	介绍
              """),
            _buildNetworkImage(),
            const Text("""
                PaintImage	介绍
              """),
            _buildPaintImage(),
            const Text("""
                RawImage	介绍
                
                RawImage 的 RenderImage 通过 paint 绘制 ImageInfo 中的 ui.Codec
                image: _imageInfo?.image,
                debugImageLabel: _imageInfo?.debugLabel,
                width: widget.width,
                height: widget.height,
                scale: _imageInfo?.scale ?? 1.0,
                color: widget.color,
                colorBlendMode: widget.colorBlendMode,
                fit: widget.fit,
                alignment: widget.alignment,
                repeat: widget.repeat,
                centerSlice: widget.centerSlice,
                matchTextDirection: widget.matchTextDirection,
                invertColors: _invertColors,
                isAntiAlias: widget.isAntiAlias,
                filterQuality: widget.filterQuality,
              """),
            _buildRawImage(),
          ],
        ),
      ),
    );
  }

  _buildAssetImage() {
    return Container(
      width: 30,
      height: 60,
      color: Colors.yellow,
      child: Image(
        image: AssetImage('images/base_widgets/star_black.png'),
        fit: BoxFit.scaleDown,
      ),
    );
  }

  _buildDecorationImage() {
    return DecorationImage(
      image: ExactAssetImage('assets/images/time.png'),
      fit: BoxFit.cover,
    );
  }

  _buildDecorationImagePainter() {
    return ButtonBar();
  }

  _buildExactAssetImage() {
    return ButtonBar();
  }

  _buildFadeInImage() {
    return FadeInImage.assetNetwork(placeholder: '', image: '');
  }

  _buildFileImage() {
    return ResizeImage(FileImage(File("aaa/bbb.jpg")), width: 30);
  }

  _buildImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image.asset(
            'images/base_widgets/star_black.png',
            fit: BoxFit.none,
          ),
        ),
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image(
            image: AssetImage('images/base_widgets/star_black.png'),
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image(
            image: AssetImage('images/base_widgets/star_black.png'),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image(
            image: AssetImage('images/base_widgets/star_black.png'),
            fit: BoxFit.contain,
          ),
        ),
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image(
            image: AssetImage('images/base_widgets/star_black.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image(
            image: AssetImage('images/base_widgets/star_black.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image(
            image: AssetImage('images/base_widgets/star_black.png'),
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    );
  }

  _buildMemoryImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      image: MemoryImage(Uint8List.fromList([1, 2, 3]), scale: 0.5),
    );
  }

  _buildNetworkImage() {
    return NetworkImage("");
  }

  _buildPaintImage() {
    return ButtonBar();
  }

  _buildRawImage() {
    return ButtonBar();
  }
}
