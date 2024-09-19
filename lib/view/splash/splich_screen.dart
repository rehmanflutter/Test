import 'dart:async';
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
      () {
        Navigator.pushNamed(context, '/DomainScreen');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.amber, //AppColour.appcolour,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Text(""))],
      ),
    );
  }
}
