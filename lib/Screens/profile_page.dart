import 'package:bytencoder/Screens/cart_page.dart';
import 'package:bytencoder/Screens/drawer.dart';
import 'package:bytencoder/Screens/home_page.dart';
import 'package:bytencoder/Widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class Account extends StatelessWidget {
  final searchController = TextEditingController();
  final Color mainColor = Color(0xffD40909);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          child: Container(
            padding: const EdgeInsets.only(left: 5),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
        ),
        actions: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  // margin: EdgeInsets.only(top: 1.h, right: 2.w),
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  width: 12.w,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ShoppingCart()));
                    },
                    icon: Center(
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        size: 7.w,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.only(left: 8.w, top: 0.1.h),
                height: 18,
                width: 18,
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 10.sp, color: Colors.red),
                  ),
                ),
              ),
            ],
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(180),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            child: Container(
              height: 22.h,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(2.w),
                child: Column(
                  children: [
                    Container(
                      height: 12.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          color: mainColor, shape: BoxShape.circle),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 20.w,
                      ),
                    ),
                    Text(
                      'Bishal Khatiwada',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '98-xxxxxx | test@gmail.com',
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.blueGrey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 1.4.h),
          children: [
            Container(
              padding: EdgeInsets.all(2.w),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ACCOUNT',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  customListTile(title: 'Profile', leadingIcon: Icons.person),
                  customListTile(
                    title: 'Saved Address',
                    leadingIcon: Icons.star,
                  ),
                  customListTile(
                    title: 'Notification',
                    leadingIcon: Icons.notifications,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(2.w),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'OFFERS',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  customListTile(
                    title: 'Promos',
                    leadingIcon: Icons.person,
                  ),
                  customListTile(
                    title: 'Get Discounts',
                    leadingIcon: Icons.star,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(2.w),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SETTINGS',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  customListTile(
                    title: 'Themes',
                    leadingIcon: Icons.person,
                  ),
                  customListTile(
                    title: 'Privacy',
                    leadingIcon: Icons.privacy_tip,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
