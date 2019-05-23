import 'package:flutter/material.dart';
import 'package:whatsapp/models/chats_item_model.dart';
import 'package:whatsapp/helpers/chats_item_helper.dart';
import 'package:whatsapp/Views/chat_room/chat_room.dart';

class ChatsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ChatsItemHelper.itemCount,
        itemBuilder: (context, index) {
          ChatsItemModel chatItemModel = ChatsItemHelper.getChatItem(index);
          return new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatRoom(chatItem: chatItemModel),
                  ),
                );
              },
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Row(
                      children: <Widget>[
                        showProfileImage(chatItemModel.avatar),
                        showItemPreView(chatItemModel)
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey[400],
                    indent: 50,
                  )
                ],
              ));
        });
  }

  Expanded showItemPreView(ChatsItemModel chatItem) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                chatItem.name,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
              ),
              Text(
                chatItem.dateTime,
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              chatItem.lastMessage,
              style: TextStyle(color: Colors.black45, fontSize: 16.0),
            ),
          )
        ],
      ),
    ));
  }

  Container showProfileImage(String avatar) {
    return new Container(
      height: 50.0,
      width: 50.0,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.fill,
          image: new NetworkImage(avatar),
        ),
      ),
    );
  }
}
