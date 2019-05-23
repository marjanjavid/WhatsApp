import 'package:meta/meta.dart';

class ChatHistoryModel {
  bool fromMySelf;
  String message;
  int chatID;
  ChatHistoryModel({@required bool fromMySelf, @required String message,@required int chatID })
      : fromMySelf = fromMySelf ?? true,
        message = message ?? '',
        chatID = chatID ?? 0;
}
