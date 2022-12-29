import 'package:englishexpert/RESOURSE/appColor.dart';
import 'package:flutter/cupertino.dart';

Widget boldText({
  required String labelText,
}) {
  return Text(
    labelText,
    style: const TextStyle(fontWeight: FontWeight.bold),
  );
}

Widget boldTextColor({
  required String labelText,
}) {
  return Text(
    labelText,
    style: const TextStyle(fontWeight: FontWeight.bold, color: colorPrimary),
  );
}

Widget colorText({
  required String labelText,
}) {
  return Text(
    labelText,
    style: const TextStyle(color: colorPrimary, fontSize: 12),
  );
}

Widget nanoText({
  required String labelText,
}) {
  return Text(
    labelText,
    style: const TextStyle(fontSize: 12),
  );
}

Widget normalRichText({
  required String textOne,
  required String textTwo,
}) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: textOne,
          style: const TextStyle(color: colorBlack),
        ),
        TextSpan(
          text: textTwo,
          style:
              const TextStyle(color: colorBlack, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget numberTextBlack({
  required String labelTextColor,
}) {
  return Text(
    labelTextColor,
    style: const TextStyle(
        color: colorBlack, fontWeight: FontWeight.bold, fontSize: 30),
  );
}

Widget numberTextWhite({
  required String labelTextColor,
}) {
  return Text(
    labelTextColor,
    style: const TextStyle(
        color: colorWhite, fontWeight: FontWeight.bold, fontSize: 16),
  );
}
