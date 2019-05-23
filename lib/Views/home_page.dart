import 'package:flutter/material.dart';
import 'package:whatsapp/Views/calls_view.dart';
import 'package:whatsapp/Views/status_view.dart';
import 'package:whatsapp/Views/camera_view.dart';
import 'package:whatsapp/Views/chats_view.dart';

class HomePage extends StatelessWidget {
  final Color whatsAppGreen = Colors.teal[800];
  final Color whatsAppGreenLight = Color.fromRGBO(37, 211, 102, 1.0);

  final Text whatsAppTitle = Text(
    'WhatsApp',
    style: TextStyle(
        color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600),
  );

  final TabBar whatsAppTabBar = TabBar(
    tabs: <Widget>[
      Tab(icon: Icon(Icons.camera_alt)),
      Tab(child: Text("CHATS")),
      Tab(child: Text("STATUS")),
      Tab(child: Text("CALLS")),
    ],
  );

  final List<Widget> whatsAppActions = <Widget>[
    Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Icon(Icons.search),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Icon(Icons.more_vert),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
          appBar: AppBar(
            title: whatsAppTitle,
            actions: whatsAppActions,
            bottom: whatsAppTabBar,
            backgroundColor: whatsAppGreen,
          ),
          body: TabBarView(
            children: <Widget>[
              CameraView(),
              ChatsView(),
              StatusView(),
              CallsView()
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.message),
            backgroundColor: whatsAppGreenLight,
          )),
    );
  }
}
