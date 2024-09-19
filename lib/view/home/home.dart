import 'package:chats/Controller/chatController/chat_controller.dart';
import 'package:chats/main.dart';
import 'package:chats/utils/colours.dart';
import 'package:chats/utils/common/custamContainer.dart';
import 'package:chats/utils/common/custon_icon.dart';
import 'package:chats/utils/common/text_custam.dart';
import 'package:chats/utils/images.dart';
import 'package:chats/view/home/widgets/public_post_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.appbackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              6.h.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustamContainer(
                        height: 40,
                        width: 40,
                        cir: 10,
                        imageDecoration:
                            DecorationImage(image: AssetImage(AppImages.hello)),
                      ),
                      3.width,
                      TextCustom(
                        text: 'Realix Time',
                        size: 18,
                        weight: FontWeight.w600,
                        gradientText: true,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CustomIcos(
                        child: SvgPicture.asset(AppImages.reel),
                        fun: () {},
                      ),
                      8.width,
                      CustomIcos(
                        child: TextCustom(
                          text: '+',
                          size: 22,
                          weight: FontWeight.bold,
                        ),
                        fun: () {},
                      ),
                      8.width
                    ],
                  )
                ],
              ),
              2.h.height,
              TextCustom(
                text: 'Hello, Abdul Rehman 👋',
                size: 25,
                weight: FontWeight.w700,
                col: AppColours.appcolour,
              ),
              const Divider(
                thickness: 4,
                color: AppColours.lightgray,
              ),
              1.h.height,
              PublicPostList(),
              2.h.height,
            ],
          ),
        ),
      ),
    );
  }
}
