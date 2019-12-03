import 'package:flutter/material.dart';
import 'dart:ui';

abstract class BaseRoute extends StatelessWidget {
  @protected final title;
  double screenWidth, screenHeight;
  BaseRoute(this.title) {
    screenWidth = window.physicalSize.width;
    screenHeight = window.physicalSize.height;
    print("屏幕尺寸:宽=$screenWidth, 高=$screenHeight");
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: body(context),
    );
  }

  @protected
  Widget body(BuildContext context);
}
