import 'package:flutter/material.dart';
import 'chat.dart';
import 'status.dart';
import 'call.dart';

void main() {
  runApp(const MaterialApp(
    title: "Whatsapp",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //create controller untuk tabBar
  late TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 3);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: const Text("Whatshapp"),
          bottom: TabBar(
            controller: controller,
            tabs: const <Widget>[
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        child: Text("Profile"),
                        value: 1,
                      ),
                      const PopupMenuItem(
                        child: Text("Settings"),
                        value: 2,
                      )
                    ])
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add,
              color: (Colors.lightGreen),
            ),
            onPressed: () {}),
        body: TabBarView(
          controller: controller,
          children: const <Widget>[
            Chats(),
            Status(),
            Calls(),
          ],
        ));
  }
}
