import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> likedArry = [];
  List<bool> addedToCart = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 100; i++) {
      likedArry.add(false);
      addedToCart.add(false);
    }
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
          'Select your fav',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green[100],
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(0),
        childAspectRatio:
            (((_size.width - 30) / 3) / (((_size.width - 30) / 3) + 40)),
        children: List.generate(100, (index) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: (_size.width - 30) / 3,
                      height: (_size.width - 30) / 3,
                      child: RotatedBox(
                        quarterTurns: 0,
                        child: Image.asset(
                          "assets/images/Unknown.jpg",
                          width: (_size.width - 30) / 3,
                          height: (_size.width - 30) / 3,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      left: ((_size.width - 30) / 3) - 40,
                      top: 0,
                      child: Container(
                          child: IconButton(
                              icon: likedArry[index]
                                  ? Icon(Icons.favorite)
                                  : Icon(Icons.favorite_border),
                              color: Colors.redAccent,
                              onPressed: () {
                                setState(() {
                                  likedArry[index] = !likedArry[index];
                                });
                              })),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "   Bookmark",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 16,
                            // height: 12,
                          ),
                        ),
                        Text(
                          "rs 100",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 12,
                            // height: 12,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        icon: Icon(addedToCart[index]
                            ? Icons.indeterminate_check_box_outlined
                            : Icons.add_box_outlined),
                        onPressed: () {
                          setState(() {
                            addedToCart[index] = !addedToCart[index];
                          });
                        }),
                    // Visibility(
                    //   visible: addedToCart[index] ? true : false,
                    //   child: Text(
                    //     "q",
                    //     style: TextStyle(
                    //       height: 3.5,
                    //
                    //     ),
                    //   ),
                    // )
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
