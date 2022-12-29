import 'package:englishexpert/RESOURSE/appColor.dart';
import 'package:englishexpert/RESOURSE/appImages.dart';
import 'package:englishexpert/RESOURSE/appString.dart';
import 'package:englishexpert/WIDGETS/appSizeBox.dart';
import 'package:englishexpert/WIDGETS/appText.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

Widget sectionMarkCard({
  required BuildContext context,
  required String sectionMark,
  required String sectionLabel,
  required void Function() cardAction,
}) {
  return InkWell(
    onTap: cardAction,
    child: Row(
      children: [
        CircularPercentIndicator(
          radius: 20.0,
          lineWidth: 5,
          percent: 0.2,
          backgroundColor: colorPrimaryyello,
          center: boldText(labelText: sectionMark),
          progressColor: colorWhite,
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sectionLabel,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Oswald'),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget sectionMarkCardProfile({
  required BuildContext context,
  required String sectionMark,
  required String sectionLabel,
  required void Function() cardAction,
}) {
  return InkWell(
    onTap: cardAction,
    child: Row(
      children: [
        CircularPercentIndicator(
          radius: 20.0,
          lineWidth: 5,
          percent: 0.2,
          backgroundColor: colorPrimaryyello,
          center: boldText(labelText: sectionMark),
          progressColor: colorWhite,
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [nanoText(labelText: sectionLabel)],
          ),
        ),
      ],
    ),
  );
}

Widget sectionCard({
  required BuildContext context,
  required String lessionNumber,
  required String sectionLabel,
  required void Function() cardAction,
}) {
  return InkWell(
    onTap: cardAction,
    child: Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10, left: 10),
            alignment: Alignment.centerLeft,
            width: 80,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(shapeB),
              ),
            ),
            child: numberTextWhite(
              labelTextColor: lessionNumber,
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                boldTextColor(labelText: sectionLabel),
                Text(
                  messageOne,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget greetingCard({
  required BuildContext context,
  required String cardLabel,
  required String cardImage,
}) {
  return Card(
    margin: const EdgeInsets.only(left: 15, right: 15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: 60,
            height: 50,
            child: Image.asset(cardImage),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              boldTextColor(labelText: cardLabel),
              Text(
                messageTwo,
                style: const TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget specialCategoryCard(
    {required BuildContext context,
    required void Function() cardAction,
    required String cardLabel,
    required String cardImage}) {
  return InkWell(
    onTap: cardAction,
    child: Card(
      margin: const EdgeInsets.only(left: 15, right: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              width: 60,
              height: 50,
              child: Image.asset(cardImage),
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                boldTextColor(labelText: cardLabel),
                Text(
                  messageOne,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget labelRowImage({
  required String lessionNumer,
  required String labelText,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      boldTextColor(labelText: labelText),
      Container(
        padding: const EdgeInsets.only(bottom: 10, left: 10),
        alignment: Alignment.centerLeft,
        width: 60,
        height: 50,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(shapeO),
          ),
        ),
        child: numberTextWhite(
          labelTextColor: lessionNumer,
        ),
      ),
    ],
  );
}

Widget labelRowTextIcon() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      boldText(labelText: "Traslate here"),
      IconButton(onPressed: () {}, icon: const Icon(Icons.lock_open))
    ],
  );
}

Widget labelRowText({
  required String labelText,
  required String buttonText,
}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 0, 5, 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        boldText(labelText: labelText),
        TextButton(
          onPressed: () {},
          child: boldTextColor(labelText: buttonText),
        ),
      ],
    ),
  );
}

Widget sectionMarkRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: boldTextColor(labelText: '160'),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: boldTextColor(labelText: '22'),
        ),
      ),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: boldTextColor(labelText: '220'),
        ),
      ),
    ],
  );
}

Widget chatBubleCard({
  required BuildContext context,
  required String autherName,
  required String messageText,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(avatar),
          radius: 20,
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: colorChatBox,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              boldTextColor(labelText: autherName),
              heightBoxNano(),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width / 1.5,
                ),
                child: Text(
                  messageText,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget chatListCard({
  required String textName,
  required String lastMessage,
  required String dateOfchat,
  required void Function() cardAction,
}) {
  return InkWell(
    onTap: cardAction,
    child: ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(avatar),
      ),
      title: boldText(labelText: textName),
      subtitle: Text(lastMessage),
      trailing: colorText(labelText: dateOfchat),
    ),
  );
}

Widget profileCard() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CircleAvatar(
        backgroundImage: AssetImage(avatar),
        radius: 60,
      ),
      heightBoxNano(),
      Text(
        "MAYA V",
        style: GoogleFonts.roboto(
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      heightBoxNano(),
      nanoText(labelText: 'maya@gmail.com'),
    ],
  );
}

Widget trophyCard() {
  return Column(
    children: [
      SizedBox(
        height: 80,
        width: 80,
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(silvarTrophy),
          ),
        ),
      ),
      heightBoxNano(),
      colorText(labelText: "2 Silver Trophy")
    ],
  );
}
