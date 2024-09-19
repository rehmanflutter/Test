import 'package:chats/utils/colours.dart';
import 'package:chats/utils/common/custamContainer.dart';
import 'package:chats/utils/images.dart';
import 'package:chats/view/Camara/video_edit.dart';
import 'package:chats/view/chats/chatUser.dart';
import 'package:chats/view/home/home.dart';
import 'package:chats/view/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomAppBarCus extends StatefulWidget {
  @override
  _BottomBarCusState createState() => _BottomBarCusState();
}

class _BottomBarCusState extends State<BottomAppBarCus> {
  int selectedIndex = 0;

  final List<Widget> classes = [
    HomeScreen(),
    ChatUsers(),
    MyHomePage(title: 'kdfj'),
    ProfileScreen()
  ];

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: classes[selectedIndex],
      bottomNavigationBar: Container(
        color: Color(0xffFBFBFB),
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildNavItem(
                  AppImages.home,
                  0,
                ),
                buildNavItem(
                  AppImages.chat,
                  1,
                ),
                CustamContainer(
                  onTap: () {
                    Navigator.pushNamed(context, '/CameraAwesomeApp');
                  },
                  height: 55,
                  width: 55,
                  shado: true,
                  cir: 25,
                  grading: true,
                  child: const Icon(
                    Icons.add_circle_outline_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                buildNavItem(
                  AppImages.reel,
                  2,
                ),
                buildNavItem(
                  AppImages.profile,
                  3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNavItem(
    String icon,
    int index,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
            onTap: () => onTabTapped(index),
            child: CustamContainer(
              height: 50,
              width: 50,
              shado: true,
              cir: 25,
              col: selectedIndex == index ? AppColours.black : Colors.white,
              //    grading: selectedIndex == index ? true : false,
              child: SvgPicture.asset(
                height: 20,
                width: 20,
                icon,
                color: selectedIndex == index
                    ? AppColours.white
                    : const Color(0xff454545),
              ),
            )),
        SizedBox(
          height: 1.h,
        ),
      ],
    );
  }
}
