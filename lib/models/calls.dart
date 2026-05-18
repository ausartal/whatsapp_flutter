class CallItem {
  final String name;
  final String time;
  final bool isIncoming;
  final String avatarUrl;

  CallItem({
    required this.name,
    required this.time,
    required this.isIncoming,
    required this.avatarUrl,
  });
}

final List<CallItem> callList = [
  CallItem(
    name: 'Budi',
    time: 'Hari ini, 08:30',
    isIncoming: true,
    avatarUrl: 'https://i.pravatar.cc/150?img=11',
  ),
  CallItem(
    name: 'Sinta',
    time: 'Kemarin, 21:12',
    isIncoming: false,
    avatarUrl: 'https://i.pravatar.cc/150?img=21',
  ),
  CallItem(
    name: 'Andi',
    time: 'Kemarin, 19:04',
    isIncoming: true,
    avatarUrl: 'https://i.pravatar.cc/150?img=31',
  ),
];
