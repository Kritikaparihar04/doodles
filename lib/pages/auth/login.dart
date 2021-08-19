import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kirti_project/pages/auth/forgotPassword.dart';
import 'package:kirti_project/pages/auth/signUp.dart';
import 'package:kirti_project/pages/tab/home.dart';
import 'package:kirti_project/pages/tab/tabPage.dart';
import 'package:kirti_project/widget/constants.dart';
import 'package:kirti_project/widget/customButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passVisible = true;
  bool _loginPressed = false;
  final GlobalKey _formGlobalKey = GlobalKey<FormState>();
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        backwardsCompatibility: false,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formGlobalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Sign In doodlers',
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
                      return 'Please enter email';
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
                GestureDetector(
                  onTap: () {
                    showGeneralDialog(
                      context: context,
                      pageBuilder: (context, anim1, anim2) {
                        return Align(
                          alignment: Alignment.center,
                          child: ForgotPasswordDailog(),
                        );
                      },
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.right,
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
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => TabPage()),
                      );
                    }
                  },
                  child: CustomButtonWidget(
                    label: 'LOG IN',
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
                    text: "Don't have an Account? ",
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.normal),
                    children: <TextSpan>[
                      TextSpan(
                          text: "SIGN UP",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()),
                              );
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
