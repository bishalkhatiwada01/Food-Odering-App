import 'package:bytencoder/Screens/home_page.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class BurgerPage extends StatelessWidget {
  const BurgerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.only(left: 5),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            actions: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 5,
                child: IconButton(
                  iconSize: 8.w,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(2.w),
              child: Text(
                "Chipotley Cheesy Chicken",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.w),
              child: Text(
                "A signature flame-grilled chicken patty topped with smoked beef",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50.h,
              child: Stack(
                children: [
                  Card(
                    elevation: 2,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(250),
                            bottomRight: Radius.circular(250))),
                    child: SizedBox(
                      height: 45.h,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 6.h,
                    left: 20.w,
                    child: SizedBox(
                      height: 32.h,
                      width: 60.w,
                      child: Image.asset(
                        "assets/burger.png",
                        width: 100,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 33.h,
                    left: 8.w,
                    child: InkWell(
                      onTap: () {},
                      child: _cardButton(sizeName: 'S'),
                    ),
                  ),
                  Positioned(
                    top: 41.h,
                    left: 43.w,
                    child: _cardButton(sizeName: 'M'),
                  ),
                  Positioned(
                    right: 8.w,
                    top: 33.h,
                    child: _cardButton(sizeName: 'L'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: const CircleBorder(),
                      padding: EdgeInsets.all(1.w)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Text(
                  "1234",
                  style: TextStyle(fontSize: 18.sp),
                ),
                SizedBox(
                  width: 1.w,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: const CircleBorder(),
                      padding: EdgeInsets.all(1.w)),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: SizedBox(
                height: 7.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: Text(
                            "Price",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Text(
                          'Rs. 140',
                          style: TextStyle(
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffD40909),
                          minimumSize: Size(10.w, 7.h),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                              size: 8.w,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              'Go to Cart',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _cardButton extends StatelessWidget {
  final String sizeName;

  _cardButton({required this.sizeName});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 6,
      child: TextButton(
        style: TextButton.styleFrom(minimumSize: const Size(20, 20)),
        onPressed: () {},
        child: Text(
          sizeName,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
