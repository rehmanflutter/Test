import 'package:chats/utils/colours.dart';
import 'package:chats/utils/common/text_custam.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback fun;
  final Color? col;
  final Color? textcolor;
  final Color? backcol;
  final bool? loading;
  RoundButton({
    required this.title,
    required this.fun,
    this.col,
    this.textcolor = Colors.white,
    this.loading = false,
    this.backcol = const Color(0xff8434FC),
  });
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: fun,
      child: Container(
        height: 55, //media.height * 0.07,
        width: media.width,
        decoration: BoxDecoration(
          color: AppColours.black,
          borderRadius: BorderRadius.circular(10),
          // gradient: const LinearGradient(
          //   colors: [
          //     AppColours.gradient1,
          //     AppColours.gradient2,
          //   ],
          //   begin: Alignment.topLeft,
          //   end: Alignment.topRight,
          // )
        ),
        child: Center(
          child: loading == true
              ? const CircularProgressIndicator(
                  backgroundColor: Colors.transparent,
                  color: Colors.white,
                )
              : TextCustom(
                  text: title,
                  col: textcolor,
                  size: 18,
                  weight: FontWeight.w600,
                ),
        ),
      ),

      //  ElevatedButton(
      //   onPressed: fun,
      //   child: Center(
      //     child: loading == true
      //         ? CircularProgressIndicator(
      //             backgroundColor: Colors.transparent,
      //             color: Colors.white,
      //           )
      //         : Textcustam(
      //             text: title,
      //             col: textcolor,
      //             size: 16,
      //             weight: FontWeight.w500,
      //           ),
      //   ),
      //   style: ElevatedButton.styleFrom(
      //       // elevation: 5,
      //       // shadowColor: Colors.blue.shade300,
      //       backgroundColor: backcol,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(30))),
      // ),
    );
  }
}
