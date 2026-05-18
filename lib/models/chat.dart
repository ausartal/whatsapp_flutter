class Chat {
  final String image;
  final String name;
  final String messageDate;
  final String mostRecentMessage;

  Chat({
    required this.image,
    required this.name,
    required this.messageDate,
    required this.mostRecentMessage,
  });
}

final List<Chat> chatList = [
  Chat(
    image: 'assets/images/Gojo.jpg',
    name: 'Gojo',
    messageDate: '07/11/2023',
    mostRecentMessage: 'Hari ini jadi ngafe?',
  ),
  Chat(
    image: 'assets/images/Sukuna.jpg',
    name: 'Sukuna',
    messageDate: '07/11/2023',
    mostRecentMessage: 'Kapan kita main game lagi?',
  ),
  Chat(
    image: 'assets/images/YujiModulo.jpg',
    name: 'Yuji',
    messageDate: '07/11/2023',
    mostRecentMessage: 'Kamu mau nitip ayam gak?',
  ),
];
