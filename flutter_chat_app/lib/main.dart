import 'package:flutter/material.dart';
import 'package:flutter_chat_app/config/themes/app_theme.dart';
import 'package:flutter_chat_app/views/chat/chat_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 6).theme(),
      title: 'Material App',
      home: const ChatView(),
    );
  }
}