import 'package:flutter/material.dart';
import 'package:kirti_project/pages/tab/cart/cart.dart';
import 'package:kirti_project/pages/tab/home.dart';
import 'package:kirti_project/pages/tab/setting/setting.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {

  int _selectedIndex = 0;

  final HomePage _homePage = new HomePage();
  final CartPage _cartPage = new CartPage();
  final SettingPage _settingPage = new SettingPage();

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget pageChooser() {
    switch (this._selectedIndex) {
      case 0:
        return _homePage;
        break;
      case 1:
        return _cartPage;
        break;
      case 2:
        return _settingPage;
        break;

      default:
        return Stack(
          children: [
            Center(
              child: Text(
                'Not Found',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          elevation: 10,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 12,
          ),
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 12,
          ),
          items: getBottomBar,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.black54,
          selectedItemColor: Colors.lightBlueAccent,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
        ),
        body: pageChooser(),
      ),
    );
  }

  List<BottomNavigationBarItem> get getBottomBar {
    List<BottomNavigationBarItem> values = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'HOME',
      )
    ];
    values.add(
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: 'CART',
      ),
    );
    values.add(
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'SETTING',
      ),
    );
    return values;
  }
}