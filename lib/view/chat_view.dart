import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  String? name;
  ChatView({this.name});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name.toString()),
      ),
    );
  }
}
