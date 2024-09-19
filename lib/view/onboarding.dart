import 'package:chats/main.dart';
import 'package:chats/utils/colours.dart';
import 'package:chats/utils/common/custamContainer.dart';
import 'package:chats/utils/common/text_custam.dart';
import 'package:chats/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final List<String> images = [
    AppImages.aTrueFriendship,
    AppImages.aTrueLoveStory
  ];
  final PageController pagecon = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff247378),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: PageView.builder(
          controller: pagecon,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(images[index]), fit: BoxFit.fill)),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 12.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  AppImages.shado,
                                ),
                                fit: BoxFit.fill)),
                      )
                    ],
                  ),
                ));
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 2.3.h,
                child: SmoothPageIndicator(
                  controller: pagecon,
                  // controller: OnBoardingController.pageController,
                  count: 2,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey.shade300,
                    dotWidth: 10,
                    dotHeight: 10,
                    activeDotColor: AppColours.white,
                  ),
                ),
              ),
            ),
            2.h.height,
            TextCustom(
              text: 'Let’s Get Started',
              size: 24,
              weight: FontWeight.w700,
              col: AppColours.white,
            ),
            0.5.h.height,
            SizedBox(
              width: 35.h,
              //color: Colors.amber,
              child: TextCustom(
                text: 'Unlock the door to ignite your spark.',
                col: AppColours.white,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/LoginScreen');
              },
              child: CustamContainer(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                cir: 15,
                col: AppColours.black,
                height: 7.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    15.width,
                    TextCustom(
                      text: 'CONTINUE  ',
                      size: 16,
                      weight: FontWeight.w700,
                      col: AppColours.white,
                    ),

                    Image.asset(AppImages.lift)
                    // Icon(
                    //   Icons.arrow_forward_ios,
                    //   color: AppColours.white,
                    // ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
          ],
        ),
      ),
    );
  }
}
