import 'package:chats/Controller/chatController/chat_controller.dart';
import 'package:chats/main.dart';
import 'package:chats/utils/colours.dart';
import 'package:chats/utils/common/custamContainer.dart';
import 'package:chats/utils/common/text_custam.dart';
import 'package:chats/view/chats/widgets/group_chat.dart';
import 'package:chats/view/chats/widgets/private_chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChatUsers extends StatelessWidget {
  ChatUsers({super.key});
  final controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.appbackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            6.h.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextCustom(
                  text: 'Chatrooms',
                  size: 22,
                  weight: FontWeight.w700,
                  gradientText: true,
                ),
                Obx(() => controller.privateChat.value == true
                    ? const SizedBox()
                    : const Icon(Icons.add_circle_outline_outlined))
              ],
            ),
            const Divider(
              color: AppColours.lightgray,
              height: 20,
              thickness: 5,
            ),
            1.h.height,
            Obx(
              () => Row(
                children: [
                  CustamContainer(
                    onTap: () {
                      controller.privateChat.value = true;
                    },
                    width: 130,
                    height: 35,
                    borders:
                        controller.privateChat.value == false ? true : false,
                    bordercol: AppColours.lightgray,
                    col: controller.privateChat.value == true
                        ? AppColours.appcolour
                        : Colors.transparent,
                    cir: 27,
                    child: TextCustom(
                      text: 'Private Chat',
                      weight: FontWeight.w600,
                      col: controller.privateChat.value == true
                          ? AppColours.white
                          : AppColours.greyColour,
                    ),
                  ),
                  3.w.width,
                  CustamContainer(
                    onTap: () {
                      controller.privateChat.value = false;
                    },
                    width: 130,
                    height: 35,
                    borders:
                        controller.privateChat.value == true ? true : false,
                    cir: 27,
                    col: controller.privateChat.value == false
                        ? AppColours.appcolour
                        : Colors.transparent,
                    bordercol: AppColours.lightgray,
                    child: TextCustom(
                      text: 'Group Chat',
                      weight: FontWeight.w600,
                      col: controller.privateChat.value == false
                          ? AppColours.white
                          : AppColours.greyColour,
                    ),
                  ),
                ],
              ),
            ),
            2.h.height,
            Obx(() => controller.privateChat.value == true
                ? PrivateChat()
                : GroupChat())
          ],
        ),
      ),
    );
  }
}
