import 'package:chats/main.dart';
import 'package:chats/utils/colours.dart';
import 'package:chats/utils/common/custom_Button.dart';
import 'package:chats/utils/common/text_custam.dart';
import 'package:chats/utils/common/text_field_custam.dart';
import 'package:chats/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CreateAccount extends StatelessWidget {
  // final controller = Get.put(CreateAccountController());
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
              11.h.height,
              TextCustom(
                text: 'Create a Realix account',
                size: 26,
                gradientText: true,
                weight: FontWeight.w700,
              ),
              TextCustom(
                text: 'Create an account to continue',
                col: AppColours.greyColour,
              ),
              4.h.height,
              Textfieldcustam(
                // controller: controller.name,
                starticon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  child: SvgPicture.asset(
                    AppImages.profile,
                  ),
                ),
                hinttext: 'Full Name',
              ),
              2.h.height,
              Textfieldcustam(
                //   controller: controller.email,
                starticon: const Icon(
                  Icons.email_outlined,
                  color: AppColours.greyColour,
                ),
                hinttext: 'Enter Your Email',
              ),
              2.h.height,
              Textfieldcustam(
                //   controller: controller.password,
                starticon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SvgPicture.asset(
                    AppImages.lock,
                  ),
                ),
                hinttext: 'Enter Your Password',
              ),
              4.h.height,
              RoundButton(
                title: 'Sign Up',
                //   loading: controller.loading.value,
                fun: () {
                  //   controller.createUser();
                },
              ),
              4.h.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextCustom(
                    text: 'You already have an account?  ',
                    col: AppColours.greyColour,
                    size: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: TextCustom(
                      text: 'Sign In',
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
