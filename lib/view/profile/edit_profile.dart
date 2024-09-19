import 'package:chats/Controller/Profile_Controller/profile_controller.dart';
import 'package:chats/main.dart';
import 'package:chats/utils/colours.dart';
import 'package:chats/utils/common/custamContainer.dart';
import 'package:chats/utils/common/text_custam.dart';
import 'package:chats/utils/common/text_field_custam.dart';
import 'package:chats/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});
  final controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              6.h.height,

              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 110,
                      width: 92,
                      //  color: Colors.green,
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: AppColours.lightgray,
                      // foregroundImage: FileImage(controller.images!),
                      // backgroundImage:
                      //     NetworkImage(SettingController.usermode!.pick),
                    ),
                    Positioned(
                        bottom: 2,
                        left: 30,
                        right: 20,
                        child: GestureDetector(
                            onTap: () {
                              controller.getimage();
                            },
                            child: SvgPicture.asset(AppImages.camara))),
                  ],
                ),
              ),

              2.h.height,
              TextCustom(
                text: ' Fullname',
                size: 14,
                weight: FontWeight.w700,
              ),
              6.height,
              Textfieldcustam(
                  controller: controller.name,
                  starticon: Icon(Icons.person),
                  hinttext: 'Ful Name' //'${SettingController.usermode!.name} ',
                  ),
              // ... (rest of your UI code)
              2.h.height,
              TextCustom(
                text: ' Email',
                size: 14,
                weight: FontWeight.w700,
              ),
              6.height,

              CustamContainer(
                width: double.infinity,
                height: 54,
                bordercol: AppColours.lightgray,
                borders: true,
                cir: 10,
                child: TextCustom(
                  text: 'Email',
                  maxLines: 1,
                ),
              ),

              2.h.height,
              TextCustom(
                text: ' Age',
                size: 14,
                weight: FontWeight.w700,
              ),
              6.height,

              Textfieldcustam(
                  starticon: Icon(Icons.assignment_ind_rounded),
                  keyboardType: TextInputType.number,
                  controller: controller.age,
                  hinttext: 'Age' //' ${SettingController.usermode!.age}',
                  ),
              2.h.height,

              TextCustom(
                text: ' Gender',
                size: 14,
                weight: FontWeight.w700,
              ),
              6.height,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustamContainer(
                    width: 150,
                    height: 54,
                    borders: true,
                    bordercol: AppColours.lightgray,
                    cir: 10,
                    child: Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextCustom(text: '\t\t\tMale'),
                          Radio(
                            value: true,
                            groupValue: controller.selectedGender.value,
                            activeColor: AppColours.appcolour,
                            onChanged: (value) {
                              controller.selectedGender.value = value!;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustamContainer(
                    width: 150,
                    height: 54,
                    borders: true,
                    bordercol: AppColours.lightgray,
                    cir: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextCustom(text: '\t\t\tFemale'),
                        Obx(
                          () => Radio(
                            value: false,
                            groupValue: controller.selectedGender.value,
                            activeColor: AppColours.appcolour,
                            onChanged: (value) {
                              controller.selectedGender.value = value!;
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
