import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kirti_project/pages/tab/home.dart';
import 'package:kirti_project/pages/tab/tabPage.dart';

class CongratulationPage extends StatefulWidget {
  const CongratulationPage({Key key}) : super(key: key);

  @override
  _CongratulationPageState createState() => _CongratulationPageState();
}

class _CongratulationPageState extends State<CongratulationPage> {
  Timer _timer;
  int _start = 5;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Congratulations",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 32,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(
                "You have successfully registered with us. Be a part of family.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => TabPage()),
            );
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }
}
