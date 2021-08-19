import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kirti_project/pages/auth/congratulation.dart';
import 'package:kirti_project/widget/constants.dart';
import 'package:kirti_project/widget/customButton.dart';
import 'package:kirti_project/widget/emailValidator.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _passVisible = true;
  bool _loginPressed = false;
  bool _termsClicked = false;
  Color _selColor = Colors.white;
  final GlobalKey _formGlobalKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formGlobalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Sign Up Doodlers',
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  validator: (value) {
                    var input = value.trim();
                    if (input.isEmpty && _loginPressed) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    final FormState form = _formGlobalKey.currentState;
                    form.validate();
                  },
                  controller: _nameController,
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
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  validator: (value) {
                    var input = value.trim();
                    if (input.isEmpty && _loginPressed) {
                      return 'Please enter email';
                    } else if (!EmailValidator.validate(input) &&
                        _loginPressed) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    final FormState form = _formGlobalKey.currentState;
                    form.validate();
                  },
                  controller: _emailController,
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
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  obscureText: _passVisible,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  controller: _passwordController,
                  onChanged: (value) {
                    final FormState form = _formGlobalKey.currentState;
                    form.validate();
                  },
                  validator: (value) {
                    var input = value.trim();
                    if (input.isEmpty && _loginPressed) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 13,
                    ),
                    border: OutlineInputBorder(
                      borderSide: borderSide,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: enableBorderSide,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: borderSide,
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    suffixIcon: IconButton(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 12,
                      ),
                      onPressed: () {
                        setState(() {
                          _passVisible = !_passVisible;
                        });
                      },
                      icon: Icon(
                        _passVisible ? Icons.visibility_off : Icons.visibility,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                          icon: Icon(
                              _termsClicked
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank,
                              size: 20,
                              color: _selColor),
                          onPressed: () {
                            setState(() {
                              _selColor = Colors.white;
                              _termsClicked = !_termsClicked;
                            });
                          }),
                      Text.rich(
                        TextSpan(
                            text: "I agree to the app's ",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.normal),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "TERMS OF SERVICE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print("goes to terms and condition page");
                                    }),
                              TextSpan(
                                text: "\nand ",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.normal),
                              ),
                              TextSpan(
                                  text: "PRIVACY POLICY",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print("goes to privacy policy page");
                                    })
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    _loginPressed = true;
                    final FormState form = _formGlobalKey.currentState;
                    FocusScope.of(context).requestFocus(new FocusNode());
                    if (form.validate()) {
                      if (!_termsClicked) {
                        setState(() {
                          _selColor = Colors.red;
                        });
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CongratulationPage()),
                        );
                      }
                    }
                  },
                  child: CustomButtonWidget(
                    label: 'SIGN UP',
                    loading: false,
                    color: Colors.white,
                    // gradient: Gradient.,
                    // gradient: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text.rich(TextSpan(
                    text: "Already have an Account? ",
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.normal),
                    children: <TextSpan>[
                      TextSpan(
                          text: "LOG IN",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            })
                    ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
