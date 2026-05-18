import 'package:flutter/material.dart';

import '../models/chat.dart';
import '../pages/chat_detail_page.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: chatList.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final chat = chatList[index];

        return ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 6,
          ),
          leading: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey.shade200,
            foregroundImage: AssetImage(chat.image),
            child: const Icon(Icons.person, color: Colors.grey),
          ),
          title: Text(
            chat.name,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            chat.mostRecentMessage,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Text(
            chat.messageDate,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatDetailPage(chat: chat),
              ),
            );
          },
        );
      },
    );
  }
}
