import 'package:flutter/material.dart';

import '../models/status.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: statusList.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final status = statusList[index];

        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(status.avatarUrl),
          ),
          title: Text(
            status.name,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(status.time),
        );
      },
    );
  }
}
