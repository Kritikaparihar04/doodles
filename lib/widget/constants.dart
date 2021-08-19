library constants;

import 'package:flutter/material.dart';

const lightRedColor = const Color(0xffFB3A36);
const redColor = const Color(0xffE11612);
const greenColor = const Color(0xff1BAA00);
const sucessGreenColor = const Color(0xff1B9400);
const yellowColor = const Color(0xffFFC400);
const blueColor = const Color(0xff00B1FF);
const googleColor = const Color(0xffEA4335);
const faceBookColor = const Color(0xff3B5998);
const dullWhiteColor = const Color(0xffFFF9F9);
const whiteColor = const Color(0xffFFFFFF);
const borderColor = const Color(0xffE8CBCB);
const grayColor = const Color(0xff777777);
const shadow = BoxShadow(
  color: Color(0x0fE11612),
  offset: Offset(0, 6),
  blurRadius: 12,
);

const ico = "IcoMoon";

const BorderSide borderSide = BorderSide(
  width: 1,
  color: Colors.white,
);
const BorderSide enableBorderSide = BorderSide(
  width: 1,
  color: Colors.white70,
);

const BorderSide borderSideFocused = BorderSide(
  width: 1.25,
  color: redColor,
);

const redGradient = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    lightRedColor,
    redColor,
  ],
);

// const String baseUrl = 'http://167.172.147.17:3002/api/';
// const String socketBaseUrl = 'http://167.172.147.17:3002/';

String firebaseTokenNew = "Simulator";

