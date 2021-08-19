// import 'package:asaph_go/constants/constants.dart';
import 'package:flutter/material.dart';

class ProgressCircle extends StatelessWidget {
  const ProgressCircle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: Colors.white,
      valueColor: new AlwaysStoppedAnimation<Color>(
          Colors.lightBlueAccent,
      ),
    );
  }
}
