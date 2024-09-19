import 'package:chats/main.dart';
import 'package:chats/utils/colours.dart';
import 'package:chats/utils/common/custamContainer.dart';
import 'package:chats/utils/common/text_custam.dart';
import 'package:chats/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GroupChat extends StatelessWidget {
  const GroupChat({super.key});

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
                height: 80,
                bordercol: AppColours.lightgray,
                cir: 20,
                borders: true,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        SvgPicture.asset(AppImages.curcul),
                        Positioned(
                          top: 17,
                          left: 15,
                          child: TextCustom(
                            text: '${index + 1}',
                            size: 25,
                            weight: FontWeight.w700,
                            col: AppColours.white,
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 5),
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
                  ],
                ),
              ),
              // Divider(
              //   color: lightgray,
              // )
              20.height
            ],
          );
        },
      ),
    );
  }
}
