import 'package:chats/utils/colours.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final Color? col;
  final FontWeight? weight;
  final double? size;
  final int? maxLines;
  final TextAlign? align;
  final bool? underline;
  final bool? gradientText;
  TextCustom(
      {required this.text,
      this.weight,
      this.col,
      this.size,
      this.align,
      this.maxLines,
      this.underline = false,
      this.gradientText = false});
  @override
  Widget build(BuildContext context) {
    return gradientText == true
        ? GradientText(
            textAlign: align,
            '$text',
            style: TextStyle(
              color: col,
              fontSize: size,
              fontWeight: weight,
              decoration: underline == true ? TextDecoration.underline : null,
              decorationColor: col,
              decorationThickness: 1.0,
            ),
            colors: const [
              AppColours.gradient1,
              AppColours.gradient3,
              AppColours.gradient2
            ],
          )
        : Text(
            textAlign: align,
            '$text',
            maxLines: maxLines,
            overflow: maxLines != null ? TextOverflow.ellipsis : null,
            style: TextStyle(
              color: col,
              fontSize: size,
              fontWeight: weight,
              decoration: underline == true ? TextDecoration.underline : null,
              decorationColor: col,
              decorationThickness: 1.0,
            ),
          );
  }
}
