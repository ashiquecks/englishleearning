import 'dart:async';

import 'package:englishexpert/RESOURSE/appImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    timerFunction();
  }

  void timerFunction() {
    Timer(
      const Duration(seconds: 5),
      (() => Navigator.pushNamed(context, '/phoneVerifyScreen')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final widgetSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        child: Center(
          child: SizedBox(
            width: widgetSize.width / 2,
            child: Image.asset(
              'assets/images/splash_logo.webp',
            ),
          ),
        ),
      ),
    );
  }
}
