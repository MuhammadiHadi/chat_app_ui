import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  List<String> image = [
    'https://cdn.pixabay.com/photo/2015/10/19/22/20/girl-996855_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/11/23/20/45/girl-2973626_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/08/07/16/39/girl-2605526_960_720.jpg',
    'https://cdn.pixabay.com/photo/2015/12/25/15/53/girl-1107788_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/12/11/06/35/girl-3011520_960_720.jpg',
  ];

  List<String> Name = [
    "jani",
    "jani",
    "jani",
    "jani",
    "jani",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favorite Contacts',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                          radius: 35.0,
                          backgroundImage:
                              NetworkImage(image[index].toString())),
                      SizedBox(height: 6.0),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
