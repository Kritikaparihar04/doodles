import 'package:flutter/material.dart';
import 'package:kirti_project/pages/auth/login.dart';
import 'package:kirti_project/pages/tab/setting/aboutUs.dart';
import 'package:kirti_project/pages/tab/setting/wishlist.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

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
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: new AppBar(
        shadowColor: Color(0xFFE116121A),
        backwardsCompatibility: false,
        automaticallyImplyLeading: false,
        toolbarHeight: 56,
        title: Text(
          'Setting',
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
            child: GestureDetector(
              onTap: () {

              },
              child: Row(
                children: [
                  Text(
                    "Address",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.navigate_next, color: Colors.black),
                ],
              )
            ),
          ),
          Divider(
              color: Colors.black
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WishlistPage()),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "My Wishlist",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.navigate_next, color: Colors.black),
                  ],
                )
            ),
          ),
          Divider(
              color: Colors.black
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsPage(numberSet: 0,)),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "About Us",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.navigate_next, color: Colors.black),
                  ],
                )
            ),
          ),
          Divider(
              color: Colors.black
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsPage(numberSet: 1)),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "Terms & Condition",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.navigate_next, color: Colors.black),
                  ],
                )
            ),
          ),
          Divider(
              color: Colors.black
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsPage(numberSet: 2)),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "Privacy Policy",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.navigate_next, color: Colors.black),
                  ],
                )
            ),
          ),
          Divider(
              color: Colors.black
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
            child: GestureDetector(
                onTap: () {
                  Widget cancelButton = FlatButton(
                    child: Text("No"),
                    textColor: Colors.grey,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  );
                  Widget continueButton = FlatButton(
                    child: Text("Yes"),
                    textColor: Colors.red,
                    onPressed: () async {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  );
                  AlertDialog alert = AlertDialog(
                    title: Text("Log Out"),
                    content: Text(
                      'Are you sure you want to log out?',
                    ),
                    actions: [
                      cancelButton,
                      continueButton,
                    ],
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "Log Out",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.red
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.navigate_next, color: Colors.red),
                  ],
                )
            ),
          ),
          Divider(
              color: Colors.black
          )
        ],
      )
    );
  }
}