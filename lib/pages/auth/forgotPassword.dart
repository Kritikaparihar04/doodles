import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:kirti_project/widget/constants.dart';
import 'package:kirti_project/widget/customButton.dart';


class ForgotPasswordDailog extends StatefulWidget {
  @override
  _ForgotPasswordDailogState createState() =>
      _ForgotPasswordDailogState();
}

class _ForgotPasswordDailogState extends State<ForgotPasswordDailog> {

  final TextEditingController _forgotController = TextEditingController();
  bool _loginPressed = false;
  final GlobalKey _formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Form(
              key: _formGlobalKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(
                      width: _size.width - 40,
                      // color: Colors.lightBlueAccent,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: Colors.lightBlueAccent,
                        // co
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,

                       children: [
                         SizedBox(
                           height: 20,
                         ),
                         Container(
                           child: Text(
                             "FORGOT PASSWORD",
                              style: TextStyle(
                               fontSize: 20,
                                color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                            "Enter your email to reset your password. You will get a recovery link on your registered email address.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          validator: (value) {
                            var input = value.trim();
                            if (input.isEmpty && _loginPressed) {
                              return 'Please enter email';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            final FormState form = _formGlobalKey.currentState;
                            form.validate();
                          },
                          controller: _forgotController,
                          decoration: InputDecoration(

                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 13,
                            ),
                            isDense: true,
                            border: OutlineInputBorder(
                              borderSide: borderSide,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: enableBorderSide,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: borderSide,
                            ),

                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: GestureDetector(
                          onTap: () {
                            _loginPressed = true;
                            final FormState form = _formGlobalKey.currentState;
                            FocusScope.of(context)
                                .requestFocus(new FocusNode());
                            if (form.validate()){
                              print("back screen");
                              Navigator.pop(context);
                            }
                          },
                          child: CustomButtonWidget(
                            label: 'SEND LINK',
                            loading: false,
                            color: Colors.white,
                            // gradient: Gradient.,
                            // gradient: Colors.lightBlueAccent,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                        child: GestureDetector(
                          onTap: () {
                              print("back screen");
                              Navigator.pop(context);
                          },
                          child: CustomButtonWidget(
                            label: 'CANCEL',
                            loading: false,
                            color: Colors.transparent,
                            boxShadow: false,
                            txtColor: Colors.white,
                            // gradient: Gradient.,
                            // gradient: Colors.lightBlueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]
              ),
            ),
          ),
        ),
    );
  }
}