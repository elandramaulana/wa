class ChatModel {
  final String name;
  final String message;
  final String time;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
  });
}

List<ChatModel> dummyData = [
  ChatModel(
    name: "Elan",
    message: "Dimana Cuy?",
    time: "15:30",
  ),
  ChatModel(
    name: "Lili",
    message: "Jam 13.10 mulai",
    time: "17:30",
  ),
  ChatModel(
    name: "Jimmy",
    message: "Aku di Tempat biasa",
    time: "5:00",
  ),
  ChatModel(
    name: "Rachel",
    message: "Sinilah",
    time: "10:30",
  ),
  ChatModel(
    name: "Sam",
    message: "Dimana Woy? aku dah dibawah",
    time: "12:30",
  ),
  ChatModel(
    name: "Bee",
    message: "Pagi",
    time: "15:30",
  ),
];
