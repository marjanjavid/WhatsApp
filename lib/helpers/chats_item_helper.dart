import 'package:whatsapp/models/chats_item_model.dart';

class ChatsItemHelper {
  static var chatList = [
    ChatsItemModel(
        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
        "pooneh",
        "Yesterday",
        "How are u?"),
    ChatsItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Marjan Javid",
        "Yesterday",
        "Hello"),
    ChatsItemModel(
        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
        "pooneh",
        "16/07/2018",
        "How are u?"),
    ChatsItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Marjan Javid",
        "16/07/2018",
        "Hello"),
    ChatsItemModel(
        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
        "pooneh",
        "16/07/2018",
        "How are u?"),
    ChatsItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Marjan Javid",
        "16/07/2018",
        "Hello"),
    ChatsItemModel(
        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
        "pooneh",
        "16/07/2018",
        "How are u?"),
    ChatsItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Marjan Javid",
        "16/07/2018",
        "Hello"),
  ];

  static ChatsItemModel getChatItem(int position) {
    return chatList[position];
  }

  static var itemCount = chatList.length;
}
