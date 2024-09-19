import 'package:chats/main.dart';
import 'package:chats/utils/colours.dart';
import 'package:chats/utils/common/custamContainer.dart';
import 'package:chats/utils/common/custom_Button.dart';
import 'package:chats/utils/common/text_custam.dart';
import 'package:chats/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.appbackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            6.h.height,
            Row(
              children: [
                CustamContainer(
                  margin: const EdgeInsets.only(right: 10),
                  height: 110,
                  width: 27.w,

                  col: AppColours.lightgray,
                  cir: 15,
                  imageDecoration: DecorationImage(
                      image: AssetImage(AppImages.d2), fit: BoxFit.cover),
                  // image: DecorationImage(
                  //     image: NetworkImage(SettingController.usermode!.pick),
                  //     fit: BoxFit.cover)

                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(15),
                  //   child: CachedNetworkImage(
                  //     height: 100,
                  //     width: 95,
                  //     imageUrl: SettingController.usermode!.pick,
                  //     fit: BoxFit.cover,
                  //     placeholder: (context, url) => SizedBox(),
                  //     errorWidget: (context, url, error) =>
                  //         Image.asset(Images.hello),
                  //   ),
                  // ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCustom(
                      text: 'Name:',
                      size: 16,
                      weight: FontWeight.w500,
                    ),
                    SizedBox(
                      width: 58.w,
                      // color: Colors.amber,
                      child: TextCustom(
                        text: 'Name', //  '${SettingController.usermode!.name}',
                        maxLines: 1,
                      ),
                    ),
                    3.height,
                    TextCustom(
                      text: 'Email:',
                      size: 16,
                      weight: FontWeight.w500,
                    ),
                    SizedBox(
                      width: 58.w,
                      //  color: Colors.amber,
                      child: TextCustom(
                        text: 'rahman848b@gmail.com',
                        // '${SettingController.usermode!.email}',
                        maxLines: 1,
                      ),
                    ),
                  ],
                )
              ],
            ),
            2.h.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 75.2.w,
                  height: 40,
                  child: RoundButton(
                    title: 'Edit Profile',
                    fun: () {
                      Navigator.pushNamed(context, '/EditProfile');
                    },
                  ),
                ),
                CustamContainer(
                  width: 40,
                  height: 40,
                  col: AppColours.appcolour,
                  cir: 10,
                  child: Icon(
                    Icons.settings,
                    color: AppColours.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
