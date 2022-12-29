import 'package:englishexpert/RESOURSE/appColor.dart';
import 'package:flutter/material.dart';

Widget loginButton({
  required BuildContext context,
  required String buttonText,
  required void Function() buttonAction,
}) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: colorPrimary),
        onPressed: buttonAction,
        child: Text(
          buttonText,
          style: const TextStyle(color: colorWhite),
        ),
      ),
    ),
  );
}

Widget verifyButton({
  required BuildContext context,
  required String buttonText,
  required void Function() buttonAction,
}) {
  return SizedBox(
    height: 50,
    width: MediaQuery.of(context).size.width,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: colorPrimary),
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: const TextStyle(color: colorWhite),
      ),
    ),
  );
}

Widget primaryButton({
  required BuildContext context,
  required String buttonText,
  required void Function() buttonAction,
}) {
  return SizedBox(
    height: 50,
    width: MediaQuery.of(context).size.width,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: colorPrimary),
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: const TextStyle(color: colorWhite),
      ),
    ),
  );
}
