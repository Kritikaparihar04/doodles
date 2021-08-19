import 'package:flutter/material.dart';
import 'package:kirti_project/pages/auth/congratulation.dart';
import 'package:kirti_project/pages/auth/login.dart';
import 'package:kirti_project/pages/auth/signUp.dart';
import 'package:kirti_project/pages/tab/home.dart';
import 'package:kirti_project/pages/tab/tabPage.dart';

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

Map<String, WidgetBuilder> routes() => {
  // '/': (BuildContext c) => SplashScreenPage(),
  '/loginPage': (BuildContext c) => LoginPage(),
  '/signUpPage': (BuildContext c) => SignUpPage(),
  '/congratulationPage': (BuildContext c) => CongratulationPage(),

  '/tabPage': (BuildContext c) => TabPage(),

  '/homePage': (BuildContext c) => HomePage(),

};
