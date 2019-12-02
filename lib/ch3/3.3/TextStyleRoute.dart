import 'package:flutter/material.dart';
import 'package:learn_flutter/BaseRoute.dart';

// 文字样式demo
class TextStyleRoute extends BaseRoute {
  TextStyleRoute(title) : super(title);

  
  @override
  Widget body(BuildContext context) {
    
    return Column(
      children: <Widget>[
        Text("data"*10)
      ],
    );
  }
}