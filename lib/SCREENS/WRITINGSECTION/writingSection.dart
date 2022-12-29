import 'package:englishexpert/RESOURSE/appColor.dart';
import 'package:englishexpert/RESOURSE/appString.dart';
import 'package:englishexpert/WIDGETS/appButtons.dart';
import 'package:englishexpert/WIDGETS/appCards.dart';
import 'package:englishexpert/WIDGETS/appSizeBox.dart';
import 'package:flutter/material.dart';

class WritingSection extends StatefulWidget {
  const WritingSection({super.key});

  @override
  State<WritingSection> createState() => _WritingSectionState();
}

class _WritingSectionState extends State<WritingSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
        title: const Text("Writing Section"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              labelRowImage(lessionNumer: "01", labelText: 'LESSION'),
              Text(malayalam),
              heightBoxSmall(),
              labelRowTextIcon(),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: colorPrimary,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                maxLines: null,
                keyboardType: TextInputType.multiline,
              ),
              heightBoxSmall(),
              labelRowImage(lessionNumer: "02", labelText: 'LESSION'),
              Text(malayalam),
              heightBoxSmall(),
              labelRowTextIcon(),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: colorPrimary,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                maxLines: null,
                keyboardType: TextInputType.multiline,
              ),
              heightBoxSmall(),
              labelRowImage(lessionNumer: "03", labelText: 'LESSION'),
              Text(malayalam),
              heightBoxSmall(),
              labelRowTextIcon(),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: colorPrimary,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                maxLines: null,
                keyboardType: TextInputType.multiline,
              ),
              heightBoxSmall(),
              primaryButton(
                  context: context, buttonText: "SUBMIT", buttonAction: () {})
            ],
          ),
        ),
      ),
    );
  }
}
