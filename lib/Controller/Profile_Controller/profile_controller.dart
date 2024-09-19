import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  final name = TextEditingController();
  final age = TextEditingController();
  RxBool selectedGender = true.obs; //   Default selection

  File? images;

  final picker = ImagePicker();

  Future<void> getimage() async {
    final pickfile = await picker.pickImage(source: ImageSource.gallery);

    if (pickfile != null) {
      images = File(pickfile.path);
      //  _uploadStorage(images!);
    }
  }
}
