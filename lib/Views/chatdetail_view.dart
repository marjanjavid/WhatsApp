import 'package:flutter/material.dart';
import 'package:whatsapp/models/chats_item_model.dart';

class ChatDetailView extends StatelessWidget {
  final ChatsItemModel chatItem;
  final Color whatsAppGreen = Colors.teal[800];
  final List<Widget> whatsAppActions = <Widget>[
    Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: Icon(Icons.videocam),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Icon(Icons.call),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Icon(Icons.more_vert),
    ),
  ];

  ChatDetailView({@required this.chatItem});

  @override
  Widget build(BuildContext context) {
    
    final ClipRRect roundedContainer = ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            SizedBox(width: 8.0),
            Icon(Icons.insert_emoticon,
                size: 30.0, color: Theme.of(context).hintColor),
            SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                cursorColor: whatsAppGreen ,              
                decoration: InputDecoration(
                  hintText: 'Type a message',
                  border: InputBorder.none,
                  
                ),
              ),
            ),
            Icon(Icons.attach_file,
                size: 30.0, color: Theme.of(context).hintColor),
            SizedBox(width: 8.0),
            Icon(Icons.camera_alt,
                size: 30.0, color: Theme.of(context).hintColor),
            SizedBox(width: 8.0),
          ],
        ),
      ),
    );
    final inputbar = Padding(
      
      padding: EdgeInsets.all(8.0),
      child: Row(
        
        children: <Widget>[
          Expanded(
            child: roundedContainer,
          ),
          SizedBox(
            width: 5.0,
          ),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: whatsAppGreen,
              child: Icon(Icons.mic, color: Colors.white),
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xFFECE5DD),
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity, //mimic a Row with maximised width,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                left: -30,
                top: 8.0,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(chatItem.avatar),
                ),
              ),
              Positioned(
                  left: -30 + 20 * 2 + 8.0,
                  top: 15.0,
                  child: Text(chatItem.name))
            ],
          ),
        ),
        backgroundColor: whatsAppGreen,
        actions: whatsAppActions,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(), // chat threads
          ),
          inputbar, // input field + send button
        ],
      ),
    );
  }
}
