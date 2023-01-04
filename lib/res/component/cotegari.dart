import 'package:flutter/material.dart';

class Cotegori extends StatefulWidget {
  @override
  State<Cotegori> createState() => _CotegoriState();
}

class _CotegoriState extends State<Cotegori> {
  int selceted = 0;

  final List<String> Chat = [
    "Message",
    "Online",
    "Group",
    "Request",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Chat.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selceted = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              child: Text(
                Chat[index],
                style: TextStyle(
                  color: index == selceted ? Colors.white : Colors.white60,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
