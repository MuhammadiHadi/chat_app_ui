import 'package:chat_app_ui/view/chat_view.dart';
import 'package:flutter/material.dart';

class Resent extends StatelessWidget {
  List<String> image = [
    'https://cdn.pixabay.com/photo/2015/10/19/22/20/girl-996855_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/11/23/20/45/girl-2973626_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/08/07/16/39/girl-2605526_960_720.jpg',
    'https://cdn.pixabay.com/photo/2015/12/25/15/53/girl-1107788_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/12/11/06/35/girl-3011520_960_720.jpg',
  ];

  List<String> Name = [
    "Miah",
    "Libby",
    "Kaylah",
    "Theresa",
    " Rory",
    // " Kailyn",
    // " Rosemary",
    // " June",
    // " Haven",
    // "  Edith",
    // "Shayla",
    // "Emely",
  ];
  List<String> Time = [
    "2:34 PM",
    "2:00 AM",
    "3:34 PM",
    "4:24 PM",
    "6:04 PM",
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: ListView.builder(
            itemCount: Name.length,
            itemBuilder: (BuildContext context, int index) {
              // final Message chat = chats[index];
              return Container(
                  margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    // color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => ChatView(
                                  name: Name[index].toString(),
                                )));
                      },
                      title: Text(Name[index].toString()),
                      leading: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(image[index].toString()),
                      ),
                      subtitle: Text("Online"),
                      trailing: Text(Time[index].toString()),
                    ),
                  ));
            },
          ),
        ),
      ),
    );
  }
}
