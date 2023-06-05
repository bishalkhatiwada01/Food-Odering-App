import 'package:bytencoder/Screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'profile_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Container(
                    width: 8.w,
                    height: 5.h,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/bishal.jpeg",
                      fit: BoxFit.fill,
                    ),
                  ),

                  // leading: CircleAvatar(
                  //   radius: 4.h,
                  // ),
                  title: Text(
                    'Bishal Khatiwada',
                    style: TextStyle(
                      fontSize: 3.h,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '@bishalK',
                    style: TextStyle(fontSize: 2.h),
                  ),
                ),
                Divider(
                  color: Colors.grey[400],
                ),
                ListTile(
                  leading: Icon(Icons.home, size: 4.0.h),
                  title: Text('Home', style: TextStyle(fontSize: 2.h)),
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.search, size: 4.0.h),
                  title: Text('Explore', style: TextStyle(fontSize: 2.h)),
                ),
                ListTile(
                  leading: Icon(Icons.notifications, size: 4.0.h),
                  title: Text('Notifications', style: TextStyle(fontSize: 2.h)),
                ),
                ListTile(
                  leading: Icon(Icons.email, size: 4.0.h),
                  title: Text('Messages', style: TextStyle(fontSize: 2.h)),
                ),
                Divider(
                  color: Colors.grey[400],
                ),
                Padding(
                  padding: EdgeInsets.all(2.0.h),
                  child: Text(
                    'Settings and Privacy',
                    style: TextStyle(
                      fontSize: 2.5.h,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person, size: 4.0.h),
                  title: Text('Profile', style: TextStyle(fontSize: 2.h)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => (AccountPage())),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.bookmark, size: 4.0.h),
                  title: Text('Bookmarks', style: TextStyle(fontSize: 2.h)),
                ),
                ListTile(
                  leading: Icon(Icons.list_alt, size: 4.0.h),
                  title: Text('Lists', style: TextStyle(fontSize: 2.h)),
                ),
                ListTile(
                  leading: Icon(Icons.person_add, size: 4.0.h),
                  title: Text('Followers', style: TextStyle(fontSize: 2.h)),
                ),
                ListTile(
                  leading: Icon(Icons.image, size: 4.0.h),
                  title: Text('Media', style: TextStyle(fontSize: 2.h)),
                ),
                ListTile(
                  leading: Icon(Icons.more_horiz, size: 4.0.h),
                  title: Text('More', style: TextStyle(fontSize: 2.h)),
                ),
                Divider(
                  color: Colors.grey[400],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
