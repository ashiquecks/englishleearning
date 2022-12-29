import 'package:englishexpert/RESOURSE/appColor.dart';
import 'package:englishexpert/WIDGETS/appCards.dart';
import 'package:englishexpert/WIDGETS/appText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConnectSection extends StatefulWidget {
  const ConnectSection({super.key});

  @override
  State<ConnectSection> createState() => _ConnectSectionState();
}

class _ConnectSectionState extends State<ConnectSection> {
  @override
  Widget build(BuildContext context) {
    final widgetSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Connect to Experts"),
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
                    title: boldText(labelText: "Sheduled Calling"),
                    subtitle: const Text('today 3:30 PM'),
                    trailing: boldText(labelText: "00:00:03"),
                  ),
                ),
              ),
            ],
          ),
          chatListCard(
            textName: "Anjana",
            lastMessage: "15 Minutes",
            dateOfchat: "yesterday",
            cardAction: () {
              Navigator.pushNamed(context, '/chatRoom');
            },
          ),
          chatListCard(
            textName: "Amal",
            lastMessage: "30 Minutes",
            dateOfchat: "october 14",
            cardAction: () {
              Navigator.pushNamed(context, '/chatRoom');
            },
          ),
          chatListCard(
            textName: "Marya John",
            lastMessage: "1 Hour",
            dateOfchat: "october 12",
            cardAction: () {
              Navigator.pushNamed(context, '/chatRoom');
            },
          ),
          chatListCard(
            textName: "Anjana",
            lastMessage: "30 Minutes",
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
          Icons.call,
          size: 30,
          color: colorWhite,
        ),
      ),
    );
  }
}
