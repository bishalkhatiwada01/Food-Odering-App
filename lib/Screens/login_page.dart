import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import 'home_page.dart';
import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 5.h),
              Image.asset('assets/login.png'),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2.w),
                    borderSide: BorderSide(
                      color: const Color.fromRGBO(192, 192, 192, 1),
                      width: 2.w,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: const Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(Icons.remove_red_eye),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2.w),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(192, 192, 192, 1),
                      width: 3,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 4.w,
                        color: Colors.black,
                      ),
                    )),
              ]),
              SizedBox(height: 1.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size(double.infinity, 6.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.w),
                    )),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 4.w),
                ),
              ),
              const SizedBox(height: 47),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/Vector 1.png',
                    width: 25.w,
                  ),
                  Text(
                    "Or Continue With",
                    style: TextStyle(
                      fontSize: 4.w,
                      color: const Color.fromRGBO(192, 192, 192, 1),
                    ),
                  ),
                  Image.asset(
                    'assets/Vector 1.png',
                    width: 25.w,
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(width: 2, color: Colors.black),
                    minimumSize: Size(double.infinity, 6.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.w),
                    )),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/g.svg.png',
                      width: 7.w,
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      "Google",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 4.w,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.04),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size(double.infinity, 6.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.w),
                    )),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.facebook,
                      size: 7.w,
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      "Facebook",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 4.w,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 33.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an acount?',
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignupPage(),
                        ));
                      },
                      child: const Text(
                        'Signup',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
