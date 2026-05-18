import 'package:flutter/material.dart';

import '../models/calls.dart';

class CallsView extends StatelessWidget {
  const CallsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: callList.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final call = callList[index];

        return ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(call.avatarUrl)),
          title: Text(
            call.name,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Row(
            children: [
              Icon(
                call.isIncoming ? Icons.call_received : Icons.call_made,
                size: 16,
                color: call.isIncoming ? Colors.red : Colors.green,
              ),
              const SizedBox(width: 4),
              Text(call.time),
            ],
          ),
          trailing: const Icon(Icons.call, color: Colors.teal),
        );
      },
    );
  }
}
