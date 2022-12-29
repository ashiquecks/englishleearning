import 'package:englishexpert/RESOURSE/appColor.dart';
import 'package:englishexpert/RESOURSE/appImages.dart';
import 'package:englishexpert/WIDGETS/appButtons.dart';
import 'package:englishexpert/WIDGETS/appSizeBox.dart';
import 'package:englishexpert/WIDGETS/appText.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({super.key});

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  final pinController = TextEditingController();
  final FocusNode _pinOTPCodeFocus = FocusNode();

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(19),
      border: Border.all(color: colorPrimary),
    ),
  );
  @override
  Widget build(BuildContext context) {
    final widgetSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: widgetSize.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: widgetSize.height / 4,
                  child: Image.asset(otpVerify),
                ),
                heightBoxMedium(),
                boldText(labelText: "We have send OTP on Your number"),
                heightBoxMedium(),
                SizedBox(
                  width: widgetSize.width / 1.5,
                  child: Pinput(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    controller: pinController,
                    focusNode: _pinOTPCodeFocus,
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsUserConsentApi,
                    listenForMultipleSmsOnAndroid: true,
                    defaultPinTheme: defaultPinTheme,
                  ),
                ),
                heightBoxMedium(),
                SizedBox(
                  width: widgetSize.width / 1.5,
                  child: verifyButton(
                    context: context,
                    buttonText: "VERIFY OTP",
                    buttonAction: () =>
                        Navigator.pushNamed(context, '/userRegisterScreen'),
                  ),
                ),
                heightBoxMedium(),
                normalRichText(
                    textOne: "Didn't receive an OTP? ", textTwo: "Recent OTP"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
