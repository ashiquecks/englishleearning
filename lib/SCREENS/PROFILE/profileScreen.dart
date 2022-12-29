import 'package:englishexpert/RESOURSE/appColor.dart';
import 'package:englishexpert/RESOURSE/appImages.dart';
import 'package:englishexpert/WIDGETS/appCards.dart';
import 'package:englishexpert/WIDGETS/appSizeBox.dart';
import 'package:englishexpert/WIDGETS/appText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final widgetSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
        title: const Text("Profile Page"),
      ),
      body: Column(
        children: [
          heightBoxNano(),
          profileCard(),
          heightBoxSmall(),
          labelRowText(labelText: "Weekly Marks", buttonText: 'view all'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                radius: 70.0,
                lineWidth: 10,
                percent: 0.2,
                backgroundColor: colorPrimary,
                center: numberTextBlack(labelTextColor: "56"),
                progressColor: colorWhite,
              ),
              SizedBox(
                width: widgetSize.width / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sectionMarkCardProfile(
                      context: context,
                      sectionLabel: 'Speaking Section Mark',
                      sectionMark: '26',
                      cardAction: () {},
                    ),
                    heightBoxNano(),
                    sectionMarkCardProfile(
                      context: context,
                      sectionLabel: 'Writing Section Mark',
                      sectionMark: '26',
                      cardAction: () {},
                    ),
                    heightBoxNano(),
                    sectionMarkCardProfile(
                      context: context,
                      sectionLabel: 'Writing Section Mark',
                      sectionMark: '26',
                      cardAction: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          heightBoxSmall(),
          labelRowText(labelText: "total trophy You won", buttonText: ''),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              trophyCard(),
              trophyCard(),
              trophyCard(),
            ],
          ),
        ],
      ),
    );
  }
}
