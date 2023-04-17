import 'package:bytencoder/Screens/home_page.dart';
import 'package:bytencoder/Screens/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/byte_logo.jpeg',
              height: 10.h,
            ),
            SizedBox(
              height: 7.h,
            ),
            if (defaultTargetPlatform == TargetPlatform.iOS)
              CupertinoActivityIndicator(
                color: Colors.black,
                radius: 7.w,
              )
            else
              const CircularProgressIndicator(
                color: Colors.black,
              )
          ],
        ),
      ),
    );
  }
}
