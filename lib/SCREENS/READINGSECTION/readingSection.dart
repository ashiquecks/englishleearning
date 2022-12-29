import 'package:englishexpert/RESOURSE/appColor.dart';
import 'package:englishexpert/RESOURSE/appString.dart';
import 'package:englishexpert/WIDGETS/appButtons.dart';
import 'package:englishexpert/WIDGETS/appCards.dart';
import 'package:englishexpert/WIDGETS/appSizeBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReadingSection extends StatefulWidget {
  const ReadingSection({super.key});

  @override
  State<ReadingSection> createState() => _ReadingSectionState();
}

class _ReadingSectionState extends State<ReadingSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
        title: const Text("Reading Section"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              labelRowImage(lessionNumer: "1", labelText: 'CHAPTER'),
              heightBoxSmall(),
              Text(
                englishStory,
                style: const TextStyle(fontSize: 18),
              ),
              heightBoxMedium(),
              primaryButton(
                context: context,
                buttonText: "COMPLETED",
                buttonAction: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
