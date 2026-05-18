class Status {
  final String name;
  final String time;
  final String avatarUrl;

  Status({required this.name, required this.time, required this.avatarUrl});
}

final List<Status> statusList = [
  Status(
    name: 'Budi',
    time: 'Baru saja',
    avatarUrl: 'https://i.pravatar.cc/150?img=11',
  ),
  Status(
    name: 'Sinta',
    time: '20 menit lalu',
    avatarUrl: 'https://i.pravatar.cc/150?img=21',
  ),
  Status(
    name: 'Andi',
    time: '1 jam lalu',
    avatarUrl: 'https://i.pravatar.cc/150?img=31',
  ),
];
