import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learn_flutter/ch3/3.3/TextStyleRoute.dart';

void main() => runApp(MyApp());

// 程序入口
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Map<String, WidgetBuilder> routes = {
    "/": (context) => SplashRoute(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      routes: {
        "main": (context) => MainRoute(),
        "new": (context) => NewRoute(
              title: "New Route",
            ),
        "/": (context) {
          return SplashRoute();
        },
        "text": (context) =>
            TextStyleRoute(ModalRoute.of(context).settings.arguments),
      },
    );
  }
}

// 欢迎页，app启动后默认跳转此路由
class SplashRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 3秒延迟跳转
    navigateToMain(context);

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(
              size: 70,
              colors: Colors.orange,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Flutter Demo Code",
                style: TextStyle(fontSize: 24, color: Colors.black87),
              ),
            )
          ],
        ),
      ),
    );
  }

  // 3秒跳转到首页
  void navigateToMain(context) {
    Timer timer = new Timer(new Duration(seconds: 3), () {
      Navigator.pop(context);
      Navigator.pushNamed(context, "main");
    });
  }
}

// 主页
class MainRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
        leading: Icon(Icons.home),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          direction: Axis.vertical,
          children: <Widget>[
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                RaisedButton(
                  child: Text("文本字体"),
                  onPressed: () {
                    Navigator.pushNamed(context, "text", arguments: "文本，字体样式");
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// 新建的测试路由页面
class NewRoute extends StatelessWidget {
  var title;

  NewRoute({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: Text('this is new route!'),
      ),
    );
  }
}
