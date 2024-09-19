import 'package:animated_react_button/animated_react_button.dart';
import 'package:chats/main.dart';
import 'package:chats/utils/colours.dart';
import 'package:chats/utils/common/custamContainer.dart';
import 'package:chats/utils/common/custon_icon.dart';
import 'package:chats/utils/common/text_custam.dart';
import 'package:chats/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PublicPostList extends StatelessWidget {
  const PublicPostList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CustamContainer(
          borders: true,
          cir: 15,
          bordercol: AppColours.lightgray,
          margin: const EdgeInsets.only(bottom: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(AppImages.d2),
                    ),
                    2.w.width,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextCustom(
                            text: 'UserName',
                            size: 16,
                            weight: FontWeight.w600,
                          ),
                          const ReadMoreText(
                            'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                            trimMode: TrimMode.Line,
                            trimLines: 2,
                            colorClickableText: Colors.pink,
                            trimCollapsedText: 'Show more',
                            trimExpandedText: 'Show less',
                            moreStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                            style: TextStyle(
                                fontSize: 14, color: AppColours.greyColour),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              CustamContainer(
                height: 20.h,
                width: double.infinity,
                cir: 10,
                imageDecoration: DecorationImage(
                    image: AssetImage(AppImages.d1), fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIcos(
                      child: AnimatedReactButton(
                          defaultColor: Colors.grey,
                          reactColor: Colors.red,
                          onPressed: () async {
                            //Simulated api/io waiting calls
                            await Future.delayed(Duration(seconds: 1));
                          }), //const Icon(Icons.favorite_border_outlined),
                      fun: () {},
                    ),
                    Row(
                      children: [
                        CustomIcos(
                          child: SvgPicture.asset(AppImages.shar),
                          fun: () {},
                        ),
                        2.w.width,
                        CustomIcos(
                          child: SvgPicture.asset(
                            AppImages.comment,
                          ),
                          fun: () {},
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
