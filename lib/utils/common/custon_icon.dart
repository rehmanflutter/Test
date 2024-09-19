import 'package:chats/utils/colours.dart';
import 'package:chats/utils/common/custamContainer.dart';
import 'package:flutter/material.dart';

class CustomIcos extends StatelessWidget {
  final Widget child;
  VoidCallback fun;
  CustomIcos({required this.child, required this.fun});
  @override
  Widget build(BuildContext context) {
    return CustamContainer(
      onTap: fun,
      height: 40,
      width: 40,
      borders: true,
      cir: 10,
      bordercol: AppColours.lightgray,
      child: child,
    );
  }
}
