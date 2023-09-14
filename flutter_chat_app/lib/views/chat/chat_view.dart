import 'package:flutter/material.dart';
import 'package:flutter_chat_app/widgets/left_message_bubble.dart';
import 'package:flutter_chat_app/widgets/message_field_box.dart';
import 'package:flutter_chat_app/widgets/right_message_bubble.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://m.media-amazon.com/images/M/MV5BOTU3NDE5MDQ4MV5BMl5BanBnXkFtZTgwMzE5ODQ3MDI@._V1_.jpg'),
          ),
        ),
        title: const Text('Mi novia'),
        centerTitle: false,
      ),
      body: _ChatComponent(),
    );
  }
}

class _ChatComponent extends StatelessWidget {
  const _ChatComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemCount: 10, itemBuilder: (context, index) {
                return (index % 2 == 0)
                ? const LeftMessageBubble()
                : const RightMessageBubble();
              })
            ),
            
            //
            MessageFieldBox()
          
          ],
        ),
      ),
    );
  }
}