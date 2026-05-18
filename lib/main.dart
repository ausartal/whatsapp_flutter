import 'package:flutter/material.dart';

import 'widgets/calls_view.dart';
import 'widgets/chat_view.dart';
import 'widgets/status_view.dart';

void main() {
  runApp(const WhatsAppUiApp());
}

class WhatsAppUiApp extends StatelessWidget {
  const WhatsAppUiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Icon(Icons.camera_alt_outlined, size: 48)),
            ChatView(),
            StatusView(),
            CallsView(),
          ],
        ),
      ),
    );
  }
}
