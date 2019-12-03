import 'package:flutter/material.dart';
import 'package:learn_flutter/BaseRoute.dart';

// 文字样式demo
class TextStyleRoute extends BaseRoute {
  TextStyleRoute(title) : super(title);

  TextStyle _red = TextStyle(fontSize: 16, color: Colors.red);

  @override
  Widget body(BuildContext context) {
    return Container(
      width: screenWidth,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /**
             * textAlign：文本的对齐方式；可以选择左对齐、右对齐还是居中。
             * 注意，对齐的参考系是Text widget本身。
             * 本例中虽然是指定了居中对齐，但因为Text文本内容宽度不足一行，Text的宽度和文本内容长度相等，那么这时指定对齐方式是没有意义的，
             * 只有Text宽度大于文本内容长度时指定此属性才有意义。
             */
            // 单行文本
            Text(
              "文本的对齐方式:可以选择左对齐、右对齐还是居中",
              textAlign: TextAlign.end,
              textDirection: TextDirection.ltr,
            ),
            // 没Android中的margin属性，所以用Container代替
            Container(
              height: 16,
            ),
            // 多行文本才能设置textAlign
            Text("文本居右：", style: _red),
            Text(
              "本例中虽然是指定了居中对齐，但因为Text文本内容宽度不足一行，Text的宽度和文本内容长度相等，那么这时指定对齐方式是没有意义的，只有Text宽度大于文本内容长度时指定此属性才有意义。",
              textAlign: TextAlign.end,
            ),
            Container(
              height: 16,
            ),
            // 居中,两种方式
            Text("文本居中：", style: _red),
            Center(
              child: Text("Hello World!"),
            ),
            Container(
              height: 16,
            ),
            Text(
              "那么这时指定对齐方式是没有意义的，只有Text宽度大于文本内容长度时指定此属性才有意义。",
              textAlign: TextAlign.center,
            ),
            // 设置字体颜色和scale
            Text(
              "Hello Flutter",
              style: TextStyle(color: Colors.red),
              textScaleFactor: 1.3,
            ),
            // 使用size设置大小
            Text(
              "Hello Flutter",
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
            // 设置背景
            Text(
              "Hello Flutter",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  backgroundColor: Colors.blue),
            ),
            // 字体
            // 加粗用FontWeight
            Text(
              "汉仪字体",
              style: TextStyle(fontFamily: "hanyi", fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
