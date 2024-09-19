import 'package:chats/utils/colours.dart';
import 'package:flutter/material.dart';

class CustamContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? col;
  final Widget? child;
  final double? cir;
  final bool? borders;
  final Color? bordercol;
  final bool grading;
  final VoidCallback? onTap;
  final bool? shado;
  final DecorationImage? imageDecoration;
  final EdgeInsetsGeometry? margin;

  CustamContainer({
    this.height,
    this.width,
    this.child,
    this.col,
    this.borders = false,
    this.cir = 1,
    this.bordercol = Colors.grey,
    this.grading = false,
    this.onTap,
    this.shado,
    this.imageDecoration,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        margin: margin, // Set margin around the container
        decoration: BoxDecoration(
          boxShadow: shado == true
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1), // Shadow color
                    spreadRadius: 1, // The extent of the shadow
                    blurRadius: 3, // The blurring of the shadow
                    offset: Offset(0, 1), // Positioning of the shadow
                  ),
                ]
              : null,
          color: grading ? null : col,
          gradient: grading
              ? const LinearGradient(
                  colors: [
                    AppColours.gradient1,
                    AppColours.gradient3,
                    AppColours.gradient2,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                )
              : null,
          border: borders == true ? Border.all(color: bordercol!) : null,
          borderRadius: BorderRadius.circular(cir!),
          image: imageDecoration, // Use the provided imageDecoration
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
