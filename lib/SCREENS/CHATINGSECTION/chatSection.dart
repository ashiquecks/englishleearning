import 'package:englishexpert/RESOURSE/appColor.dart';
import 'package:englishexpert/RESOURSE/appImages.dart';
import 'package:englishexpert/WIDGETS/appCards.dart';
import 'package:englishexpert/WIDGETS/appText.dart';
import 'package:flutter/material.dart';

class ChatSection extends StatefulWidget {
  const ChatSection({super.key});

  @override
  State<ChatSection> createState() => _ChatSectionState();
}

class _ChatSectionState extends State<ChatSection> {
  @override
  Widget build(BuildContext context) {
    final widgetSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
        elevation: 0,
        title: const Text("Chat Section"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widgetSize.width,
                child: Card(
                  child: ListTile(
                    title: boldText(labelText: "Sheduled Chating"),
                    subtitle: const Text('today 3:30 PM'),
                    trailing: boldText(labelText: "00:00:03"),
                  ),
                ),
              ),
            ],
          ),
          chatListCard(
            textName: "Anjana",
            lastMessage: "Correct answer",
            dateOfchat: "yesterday",
            cardAction: () {
              Navigator.pushNamed(context, '/chatRoom');
            },
          ),
          chatListCard(
            textName: "Amal",
            lastMessage: "please Wait",
            dateOfchat: "october 14",
            cardAction: () {
              Navigator.pushNamed(context, '/chatRoom');
            },
          ),
          chatListCard(
            textName: "Marya John",
            lastMessage: "Good evenig",
            dateOfchat: "october 12",
            cardAction: () {
              Navigator.pushNamed(context, '/chatRoom');
            },
          ),
          chatListCard(
            textName: "Anjana",
            lastMessage: "are you sure",
            dateOfchat: "october 4",
            cardAction: () {
              Navigator.pushNamed(context, '/chatRoom');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
          color: colorWhite,
        ),
      ),
    );
  }
}
