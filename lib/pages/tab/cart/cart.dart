import 'package:flutter/material.dart';
import 'package:kirti_project/pages/tab/cart/confirmOrder.dart';
import 'package:kirti_project/widget/customButton.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  List<int> numberItems = [];
  int numberOfShownItems = 3;

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < numberOfShownItems; i++) {
      numberItems.add(1);
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
          'Cart',
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: Scrollbar(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 1,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
                    childAspectRatio: (_size.width/80),
                    children: List.generate(numberOfShownItems, (index) {
                      return Center(
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/Unknown.jpg",
                              width: 60,
                              height: 60,
                              fit: BoxFit.fill,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "   Pizza",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "\$100",
                                  style: TextStyle(
                                    // color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,

                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            IconButton(
                                icon: Icon(Icons.indeterminate_check_box_outlined), onPressed: () {
                                  if (numberItems[index] > 1){
                                    setState(() {
                                      numberItems[index] = numberItems[index] - 1;
                                    });
                                  }
                                }
                            ),
                            Container(
                              width: 16,
                              alignment: Alignment.center,
                              child: Text(
                                "${numberItems[index]}",
                                textAlign: TextAlign.center,
                                style: TextStyle(

                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                            ),
                            IconButton(
                                icon: Icon(Icons.add_box_outlined), onPressed: () {
                                  if (numberItems[index] < 9){
                                    setState(() {
                                      numberItems[index] = numberItems[index] + 1;
                                    });
                                  }
                                }
                            ),
                            Spacer(),
                            Container(
                              width: 50,
                              alignment: Alignment.centerRight,
                              child: Text(
                                "\$${numberItems[index]*100}",
                                textAlign: TextAlign.center,
                                style: TextStyle(

                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      children: [
                        Text(
                          "Subtotal : ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 100,
                          alignment: Alignment.centerRight,
                          child: Text(
                            "\$${totalSubtotal()}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      children: [
                        Text(
                          "Delivery Charges : ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 100,
                          alignment: Alignment.centerRight,
                          child: Text(
                            "\$20",
                            textAlign: TextAlign.center,
                            style: TextStyle(

                              fontSize: 16,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      children: [
                        Text(
                          "Tax : ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 100,
                          alignment: Alignment.centerRight,
                          child: Text(
                            "\$30",
                            textAlign: TextAlign.center,
                            style: TextStyle(

                              fontSize: 16,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      children: [
                        Text(
                          "Total : ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 100,
                          alignment: Alignment.centerRight,
                          child: Text(
                            "\$${totalSubtotal() + 50}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ConfirmOrderPage()),
                        );
                      },
                      child: CustomButtonWidget(
                        label: 'PLACE ORDER',
                        loading: false,
                        color: Colors.lightBlueAccent,
                        txtColor: Colors.white,
                        // gradient: Gradient.,
                        // gradient: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  int totalSubtotal(){
    int subt = 0;
    for (var i = 0; i < numberOfShownItems; i++) {
      subt = subt + (numberItems[i] * 100);
    }
    print(subt);
    return subt;
  }
}