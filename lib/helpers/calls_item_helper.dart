import 'package:whatsapp/models/calls_item_model.dart';

class CallsItemHelper {
  static var chatList = [
    CallsItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Marjan Javid",
        "(2) Today, 13:55",
        false),
    CallsItemModel(
        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
        "Poune",
        "Today, 10:14",
        false),
    CallsItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Marjan Javid",
        "(3) Yesterday, 21:56",
        true),
    CallsItemModel(
        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
        "Poune",
        "19 May, 22:17",
        false),
    CallsItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Marjan Javid",
        "18 May, 19:46",
        true),
    CallsItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Marjan Javid",
        "17 May, 19:46",
        true),
    CallsItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Marjan Javid",
        "14 May, 19:46",
        true),
  ];

  static CallsItemModel getCallItem(int position) {
    return chatList[position];
  }

  static var itemCount = chatList.length;
}
