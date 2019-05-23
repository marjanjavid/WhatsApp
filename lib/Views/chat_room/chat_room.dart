import 'package:flutter/material.dart';
import 'package:whatsapp/models/chats_item_model.dart';
import 'package:whatsapp/Views/chat_room/chat_room_app_bar.dart';
import 'package:whatsapp/Views/chat_room/chat_send_message.dart';
import 'package:whatsapp/models/chat_history_model.dart';
import 'package:whatsapp/helpers/chat_history_helper.dart';

class ChatDetailView extends StatelessWidget {
  final ChatsItemModel chatItem;
  final Color whatsAppGreen = Colors.teal[800];

  ChatDetailView({@required this.chatItem});

  Widget _buildMessageDisplay(int chatId) {
    List<ChatHistoryModel> _chatHistory =
        ChatHistoryHelper.getChatMessages(chatId);
    return ListView.builder(
      itemCount: _chatHistory.length,
      //reverse: true,
      itemBuilder: (context, index) {
        //final ct = _chatHistory.reversed.toList()[index];
        final ct = _chatHistory.toList()[index];
        return Column(
          children: <Widget>[
            SizedBox(
              height: 8.0,
            ),
            Text(ct.message),
          ],
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
