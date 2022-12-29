import 'package:englishexpert/MODAL/message.dart';
import 'package:englishexpert/RESOURSE/appColor.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    final widgetSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
        title: const Text("Chat Screen"),
      ),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              shrinkWrap: true,
              reverse: true,
              order: GroupedListOrder.DESC,
              padding: const EdgeInsets.all(8),
              elements: messges,
              groupBy: (messge) => DateTime(2022),
              groupHeaderBuilder: (Message messages) => const SizedBox(),
              itemBuilder: (context, Message message) => Align(
                alignment: message.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(message.text),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  hintText: 'Type your message here...'),
              onSubmitted: (text) {
                final message =
                    Message(text: text, date: DateTime.now(), isSentByMe: true);

                setState(() {
                  messges.add(message);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
