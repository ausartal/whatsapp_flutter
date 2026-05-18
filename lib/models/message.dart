class Message {
  String text;
  bool isMe;
  String time;

  Message({required this.text, required this.isMe, required this.time});
}

var messageList = [
  Message(text: 'Hey, hari ini jadi main?', isMe: false, time: '10:10'),
  Message(text: 'Boleh aja', isMe: true, time: '10:11'),
  Message(text: 'Mau main di apa?', isMe: false, time: '10:12'),
  Message(text: 'Terserah sih, Roblox aja giman?.', isMe: true, time: '10:13'),
  Message(text: 'Gas, login', isMe: false, time: '10:14'),
];
