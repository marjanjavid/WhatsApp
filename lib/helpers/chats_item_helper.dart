import 'package:whatsapp/models/chats_item_model.dart';

class ChatsItemHelper {
  static var chatList = [
    ChatsItemModel(
        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
        "pooneh",
        "Yesterday",
        "How are u?",1),
    ChatsItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Marjan Javid",
        "Yesterday",
        "Hello",2),
    ChatsItemModel(
        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
        "Maryam",
        "16/07/2018",
        "How are u?",3),
    ChatsItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Mahnaz",
        "16/07/2018",
        "Hello",4),
    ChatsItemModel(
        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
        "Hamed",
        "16/07/2018",
        "How are u?",5),
    ChatsItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Mohammad",
        "16/07/2018",
        "Hello",6),
    ChatsItemModel(
        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
        "Mehras",
        "16/07/2018",
        "How are u?",7),
    ChatsItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Nasrin",
        "16/07/2018",
        "Hello",8),
  ];

  static ChatsItemModel getChatItem(int position) {
    return chatList[position];
  }

  static var itemCount = chatList.length;
}
