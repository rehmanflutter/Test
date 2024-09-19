import 'dart:async';
import 'package:chats/utils/common/text_custam.dart';
import 'package:flutter/material.dart';

class SplichScreen extends StatefulWidget {
  const SplichScreen({super.key});

  @override
  State<SplichScreen> createState() => _SplichScreenState();
}

class _SplichScreenState extends State<SplichScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber, //AppColour.appcolour,
        body: Row(
          children: [TextCustom(text: "HEllo ")],
        )

        //  Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [Center(child: Text(""))],
        // ),
        );
  }
}
