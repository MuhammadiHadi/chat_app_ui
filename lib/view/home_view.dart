import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController _controller;
  int selceted = 0;
  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this);
    _controller.animateTo(2);
    // TODO: implement initState
    super.initState();
  }

  final List<String> Chat = [
    "Message",
    "Online",
    "Group",
    "Request",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("ChatApp"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Stack(
        children: [
          Container(
            height: 100,
            color: Theme.of(context).primaryColor,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Chat.length,
                itemBuilder: (context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selceted = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Text(
                        Chat[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: index == selceted
                                ? Colors.white
                                : Colors.white54),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 65),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45))),
              child: Center(child: Text("Hello World")),
            ),
          )
        ],
      ),
    );
  }
}
