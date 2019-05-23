import 'package:whatsapp/models/chat_history_model.dart';

class ChatHistoryHelper {
  static List<ChatHistoryModel> chatHistory = [
    ChatHistoryModel(fromMySelf: true, message: "salam", chatID: 1),
    ChatHistoryModel(fromMySelf: false, message: "salam khubi?", chatID: 1),
    ChatHistoryModel(fromMySelf: false, message: "che khabar?", chatID: 1),
    ChatHistoryModel(fromMySelf: true, message: "merci", chatID: 1),
    ChatHistoryModel(fromMySelf: true, message: "salam", chatID: 2),
    ChatHistoryModel(fromMySelf: false, message: "salam khubi?", chatID: 2),
    ChatHistoryModel(fromMySelf: false, message: "che khabar?", chatID: 2),
    ChatHistoryModel(fromMySelf: true, message: "merci", chatID: 2),
  ];
  static List<ChatHistoryModel> getChatMessages(int chatID) {
    var chatHistoryArray = chatHistory.where((c) => c.chatID == chatID);
    return chatHistoryArray.toList();
  }
}
