import 'package:englishexpert/RESOURSE/appImages.dart';
import 'package:englishexpert/WIDGETS/appButtons.dart';
import 'package:englishexpert/WIDGETS/appSizeBox.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
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
                  width: widgetSize.width / 2,
                  child: Image.asset(splashLogo),
                ),
                heightBoxMedium(),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: IntlPhoneField(
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
                loginButton(
                  context: context,
                  buttonText: "SEND OTP",
                  buttonAction: () =>
                      Navigator.pushNamed(context, '/otpVerifyScreen'),
                ),
                heightBoxSmall(),
                const Text("we will send you one time password"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
