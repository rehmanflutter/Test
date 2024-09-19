import 'package:chats/utils/AppBAr/appbar.dart';
import 'package:chats/view/Auth/login.dart';
import 'package:chats/view/Auth/sigin.dart';
import 'package:chats/view/Camara/camara.dart';
import 'package:chats/view/chats/chatUser.dart';
import 'package:chats/view/home/home.dart';
import 'package:chats/view/onboarding.dart';
import 'package:chats/view/profile/edit_profile.dart';
import 'package:chats/view/profile/profile.dart';
import 'package:flutter/material.dart';

class Routes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => OnboardingScreen(),
    '/LoginScreen': (context) => LoginScreen(),
    '/CreateAccount': (context) => CreateAccount(),
    '/BottomAppBarCus': (context) => BottomAppBarCus(),
    '/HomeScreen': (context) => HomeScreen(),
    '/ChatUsers': (context) => ChatUsers(),
    '/ProfileScreen': (context) => ProfileScreen(),
    '/EditProfile': (context) => EditProfile(),
    '/CameraAwesomeApp': (context) => CameraPage(),
// '/':(context)=>  OnboardingScreen(),
// '/':(context)=>  OnboardingScreen(),
  };
}
