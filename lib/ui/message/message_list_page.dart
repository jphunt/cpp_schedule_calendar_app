import 'package:flutter/material.dart';

class MessageListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("消息"),
      ),
      body: Center(child: Text("message"),),
    );
  }
}
