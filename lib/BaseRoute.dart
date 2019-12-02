import 'package:flutter/material.dart';

abstract class BaseRoute extends StatelessWidget {
  @protected final title;
  BaseRoute(this.title);

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
