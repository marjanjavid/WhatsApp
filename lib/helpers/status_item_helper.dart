import 'package:whatsapp/models/status_item_model.dart';

class StatusItemHelper {
  static var statusList = [
    StatusItemModel(
        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg",
        "Poune",
        "Yesterday, 11:21 PM"),
    StatusItemModel(
        "https://image.shutterstock.com/image-photo/face-blonde-happy-bride-before-450w-546759520.jpg",
        "Marjan Javid",
        "Yesterday, 10:22 PM")
  ];

  static StatusItemModel getStatusItem(int position) {
    return statusList[position];
  }

  static var itemCount = statusList.length;
}
