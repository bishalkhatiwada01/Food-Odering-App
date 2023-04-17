import 'package:bytencoder/Screens/cart_page.dart';
import 'package:bytencoder/Screens/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../Widgets/burger_card.dart';
import '../Widgets/horizantal scroll/horizantal_scroll_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color mainColor = const Color(0xffD40909);
  final searchController = TextEditingController();

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Text('Home'),
    const Text('Favorites'),
    const Text('Account'),
    const Text('Settings'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MyDrawer()));
          },
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.grey,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                size: 8.w,
                color: mainColor,
              ),
              Text(
                "Birtamode",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 1.h, right: 2.w),
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ShoppingCart()));
                  },
                  icon: Center(
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 7.w,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.only(left: 8.w, top: 0.8.h),
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
          preferredSize: const Size.fromHeight(50),
          child: Container(
            child: TextField(
              controller: searchController,
              onTap: () {
                searchController.clear();
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.8.h),
                  hintText: "Search our delicious burger",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500),
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    size: 7.5.w,
                  )),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HorizantalScroll(),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View all >",
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      )),
                ],
              ),
            ),
            BurgerCard(),
            BurgerCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
