// ignore_for_file: file_names

class ChatsModel {
  final String name;
  final String time;
  final String message;
  final String imageUrl;
  final String chatStatus;

  final bool isGroup;

  final List<String> tags;

  ChatsModel({required this.name,required this.time,
              required this.message,required this.tags,
              required this.isGroup,required this.imageUrl,
              required this.chatStatus
  });

  String toString() {
    // TODO: implement toString
    return ("name: $name\n time: $time\n message: $message\n tags: $tags\n isGroup: $isGroup\n imageUrl: $imageUrl\n  chatStatus: $chatStatus\n");
  }

}