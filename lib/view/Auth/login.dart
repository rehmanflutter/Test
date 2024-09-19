import 'package:chats/main.dart';
import 'package:chats/utils/colours.dart';
import 'package:chats/utils/common/custamContainer.dart';
import 'package:chats/utils/common/custom_Button.dart';
import 'package:chats/utils/common/text_custam.dart';
import 'package:chats/utils/common/text_field_custam.dart';
import 'package:chats/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  // final controller = Get.put(LoginUserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.appbackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              13.h.height,
              TextCustom(
                text: 'Welcome Back!',
                size: 26,
                gradientText: true,
                weight: FontWeight.w700,
              ),
              TextCustom(
                text: 'Sign in to your account',
                col: AppColours.greyColour,
              ),
              4.h.height,
              Textfieldcustam(
                //  controller: controller.email,
                starticon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  child: SvgPicture.asset(
                    AppImages.profile,
                  ),
                ),
                hinttext: 'Enter Your Email',
              ),
              2.h.height,
              Textfieldcustam(
                // controller: controller.password,
                starticon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SvgPicture.asset(
                    AppImages.lock,
                  ),
                ),
                hinttext: 'Enter Your Password',
              ),
              2.h.height,
              RoundButton(
                title: 'Login',
                fun: () {
                  Navigator.pushNamed(context, '/BottomAppBarCus');
                },
              ),
              4.h.height,
              GestureDetector(
                onTap: () {},
                child: CustamContainer(
                  width: double.infinity,
                  height: 48,
                  // borders: true,
                  shado: true,
                  col: AppColours.white,
                  //  bordercol: AppColours.lightgray,
                  cir: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppImages.google),
                      10.width,
                      TextCustom(
                        text: 'Continue With Google',
                        size: 16,
                        weight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
              ),
              2.h.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextCustom(
                    text: 'Don’t have an account? ',
                    col: AppColours.greyColour,
                    size: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/CreateAccount');
                    },
                    child: TextCustom(
                      text: ' Sign Up',
                      col: AppColours.appcolour,
                      gradientText: true,
                      size: 16,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: Image.asset(
          AppImages.bottom,
          color: AppColours.black,
        ),
      ),
    );
  }
}
