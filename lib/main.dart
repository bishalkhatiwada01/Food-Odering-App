import 'package:bytencoder/Screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ByteEncoder',
          theme: ThemeData.light(),
          home: SplashScreen(),
        );
      },
    );
  }
}
