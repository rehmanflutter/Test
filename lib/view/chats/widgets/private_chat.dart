import 'package:chats/main.dart';
import 'package:chats/utils/colours.dart';
import 'package:chats/utils/common/custamContainer.dart';
import 'package:chats/utils/common/text_custam.dart';
import 'package:chats/utils/images.dart';
import 'package:flutter/material.dart';

class PrivateChat extends StatelessWidget {
  const PrivateChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(
            children: [
              CustamContainer(
                width: double.infinity,
                height: 70,
                bordercol: AppColours.lightgray,
                cir: 10,
                //   borders: true,
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AppImages.d1),
                    radius: 25,
                  ),
                  title: TextCustom(
                    text: 'Dania',
                    size: 16,
                    weight: FontWeight.w700,
                  ),
                  subtitle: TextCustom(
                    text: 'Can I meet Group member today?',
                    size: 13,
                    maxLines: 1,
                    weight: FontWeight.w500,
                    col: AppColours.greyColour,
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextCustom(
                        text: '21:00',
                        col: AppColours.greyColour,
                      ),
                      10.height
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 0,
                color: AppColours.lightgray,
              ),
              6.height
            ],
          );
        },
      ),
    );
  }
}
