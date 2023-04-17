import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 3.h),
          children: [
            Column(children: [
              SizedBox(height: 10.h),
              Image.asset(
                'assets/signup.png',
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.w)),
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(192, 192, 192, 1),
                          width: 2.w,
                        ))),
              ),
              SizedBox(height: 3.h),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.w)),
                    borderSide: BorderSide(
                      color: const Color.fromRGBO(192, 192, 192, 1),
                      width: 2.w,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              TextField(
                decoration: InputDecoration(
                    hintText: "Address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.w)),
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(192, 192, 192, 1),
                          width: 2.w,
                        ))),
              ),
              SizedBox(height: 3.h),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: Icon(
                      FontAwesomeIcons.eye,
                      size: 14.sp,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.w)),
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(192, 192, 192, 1),
                          width: 2.w,
                        ))),
              ),
              SizedBox(height: 3.h),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Confirm Password",
                    suffixIcon: Icon(
                      FontAwesomeIcons.eyeSlash,
                      color: Colors.black45,
                      size: 13.sp,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.w)),
                        borderSide: BorderSide(
                          color: const Color.fromRGBO(192, 192, 192, 1),
                          width: 2.w,
                        ))),
              ),
              const SizedBox(height: 41),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size(double.infinity, 6.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.w),
                    )),
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 4.w),
                ),
              ),
              const SizedBox(height: 40),
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
              const SizedBox(height: 40),
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
              SizedBox(height: 3.h),
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
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already registered?'),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignupPage()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ]),
          ]),
    );
  }
}
