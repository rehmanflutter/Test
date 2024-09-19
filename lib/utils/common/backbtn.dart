import 'package:chats/utils/common/text_custam.dart';
import 'package:flutter/material.dart';

class Backbtn extends StatelessWidget {
  final String title;
  Backbtn({required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded)),
        TextCustom(
          text: title,
          size: 20,
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}
