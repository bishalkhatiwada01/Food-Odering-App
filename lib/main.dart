import 'package:bytencoder/Screens/home_page.dart';
import 'package:bytencoder/Screens/login_page.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Screens/drawer.dart';
import 'Screens/profile_page.dart';
import 'Screens/splash_screen.dart';
import 'Widgets/custom_nav.dart';

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
          home: BottomNavBar(),
        );
      },
    );
  }
}
