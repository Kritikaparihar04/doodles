import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kirti_project/pages/tab/tabPage.dart';
import 'package:kirti_project/widget/customButton.dart';

class ConfirmOrderPage extends StatefulWidget {
  const ConfirmOrderPage({Key key}) : super(key: key);

  @override
  _ConfirmOrderPageState createState() => _ConfirmOrderPageState();
}

class _ConfirmOrderPageState extends State<ConfirmOrderPage> {

  Timer _timer;
  int _start = 3;

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
                  style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)
              ),
              SizedBox(height: 8),
              Text("Your order has been successfully placed.\nYour order will be delivered in 30 minutes.",
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),
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