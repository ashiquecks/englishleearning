import 'package:englishexpert/RESOURSE/appColor.dart';
import 'package:englishexpert/RESOURSE/appImages.dart';
import 'package:englishexpert/RESOURSE/appString.dart';
import 'package:englishexpert/WIDGETS/appCards.dart';
import 'package:englishexpert/WIDGETS/appSizeBox.dart';
import 'package:englishexpert/WIDGETS/appText.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final WidgetSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const SizedBox(),
        leadingWidth: 0,
        title: SizedBox(
          width: 120,
          child: Image.asset(elbLogo),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profileScreen');
            },
            icon: Image.asset(avatar),
            iconSize: 60,
          ),
        ],
      ),
      body: ListView(
        children: [
          heightBoxNano(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: WidgetSize.width / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Weekly Section Marks",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Oswald'),
                      ),
                    ),
                    heightBoxNano(),
                    sectionMarkRow(),
                    heightBoxSmall(),
                    sectionMarkCard(
                      context: context,
                      sectionLabel: 'Previous Week Mark',
                      sectionMark: '26',
                      cardAction: () {},
                    ),
                  ],
                ),
              ),
              CircularPercentIndicator(
                radius: 70.0,
                lineWidth: 15,
                percent: 0.2,
                backgroundColor: colorPrimarydark,
                center: numberTextBlack(labelTextColor: "56"),
                progressColor: colorWhite,
              ),
            ],
          ),
          heightBoxSmall(),
          greetingCard(
              context: context,
              cardLabel: "You won silver trophy",
              cardImage: silvarTrophy),
          sectionCard(
              context: context,
              lessionNumber: '12',
              sectionLabel: 'Writing Section',
              cardAction: () {
                Navigator.pushNamed(context, '/writingSection');
              }),
          sectionCard(
              context: context,
              lessionNumber: '08',
              sectionLabel: 'Reading Section',
              cardAction: () {
                Navigator.pushNamed(context, '/readingSection');
              }),
          sectionCard(
              context: context,
              lessionNumber: '04',
              sectionLabel: 'Speaking Section',
              cardAction: () {
                Navigator.pushNamed(context, "/speakingSection");
              }),
          specialCategoryCard(
            context: context,
            cardLabel: "Chat With Expert",
            cardImage: chatIcon,
            cardAction: () =>
                Navigator.popAndPushNamed(context, '/chatingSection'),
          ),
          heightBoxSmall(),
          specialCategoryCard(
            context: context,
            cardLabel: "Connect to Expert",
            cardImage: connect,
            cardAction: () =>
                Navigator.popAndPushNamed(context, '/connectingSection'),
          ),
          heightBoxSmall()
        ],
      ),
    );
  }
}
