import 'package:flutter/material.dart';
import 'package:whatsapp/models/chats_item_model.dart';
import 'package:whatsapp/Views/chat_room/chat_room_app_bar.dart';
import 'package:whatsapp/Views/chat_room/chat_send_message.dart';
import 'package:whatsapp/models/chat_history_model.dart';
import 'package:whatsapp/helpers/chat_history_helper.dart';

class ChatRoom extends StatelessWidget {
  final ChatsItemModel chatItem;
  final Color whatsAppGreen = Colors.teal[800];

  ChatRoom({@required this.chatItem});

  Widget _buildMessageDisplay(int chatId) {
    List<ChatHistoryModel> _chatHistory =
        ChatHistoryHelper.getChatMessages(chatId);
    return ListView.builder(
      itemCount: _chatHistory.length,
      //reverse: true,
      itemBuilder: (context, index) {
        //final ct = _chatHistory.reversed.toList()[index];
        final msg = _chatHistory.toList()[index];

        return Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: msg.fromMySelf
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text(
                    msg.message,
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
                  ),
                ),
                //decoration: new BoxDecoration(
                color: msg.fromMySelf ? Color(0xFFdcf8c6) : Colors.white,
                // borderRadius:  BorderRadius.all(Radius.circular(8.0))
                // )
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECE5DD),
      appBar: chatRoomAppBar(chatItem.avatar, chatItem.name),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: _buildMessageDisplay(chatItem.chatID),
            ),
            chatSendMessage(),
          ],
        ),
      ),
    );
  }
}
