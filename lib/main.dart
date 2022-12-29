import 'package:englishexpert/PROVIDER/datePickerProvider.dart';
import 'package:englishexpert/PROVIDER/userRegisterProvider.dart';
import 'package:englishexpert/SCREENS/AUTHENTICATION/otpVerification.dart';
import 'package:englishexpert/SCREENS/AUTHENTICATION/phoneVerification.dart';
import 'package:englishexpert/SCREENS/AUTHENTICATION/userRegistration.dart';
import 'package:englishexpert/SCREENS/CHATINGSECTION/chatRoom.dart';
import 'package:englishexpert/SCREENS/CHATINGSECTION/chatSection.dart';
import 'package:englishexpert/SCREENS/CONNECTSECTION/connectSection.dart';
import 'package:englishexpert/SCREENS/HOME/homeScreen.dart';
import 'package:englishexpert/SCREENS/PROFILE/profileScreen.dart';
import 'package:englishexpert/SCREENS/READINGSECTION/readingSection.dart';
import 'package:englishexpert/SCREENS/SPEAKINGSECTION/speakingSection.dart';
import 'package:englishexpert/SCREENS/SPLASH/splashScreen.dart';
import 'package:englishexpert/SCREENS/WRITINGSECTION/writingSection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DatePickerProvider()),
        ChangeNotifierProvider(create: (context) => UserRegisterProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        initialRoute: '/splashScreen',
        routes: {
          '/splashScreen': (context) => const SplashScreen(),
          '/phoneVerifyScreen': (context) => const PhoneVerification(),
          '/otpVerifyScreen': (context) => const OTPVerification(),
          '/userRegisterScreen': (context) => const UserRegistration(),
          '/homeScreen': (context) => const HomeScreen(),
          '/writingSection': (context) => const WritingSection(),
          '/readingSection': (context) => const ReadingSection(),
          '/speakingSection': (context) => const SpeakingSection(),
          '/chatingSection': (context) => const ChatSection(),
          '/chatRoom': (context) => const ChatRoom(),
          '/connectingSection': (context) => const ConnectSection(),
          '/profileScreen': (context) => const ProfileScreen(),
        },
      ),
    );
  }
}
