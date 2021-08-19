import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {

  final int numberSet;
  const AboutUsPage({Key key, this.numberSet}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {

  String titleHeader;

  @override
  void initState() {
    super.initState();
    if (widget.numberSet == 0){
      titleHeader = "About Us";
    }else if (widget.numberSet == 1){
      titleHeader = "Terms & Condition";
    }else{
      titleHeader = "Privacy Policy";
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
        toolbarHeight: 56,
        title: Text(
          titleHeader,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.",
              style: TextStyle(
                fontSize: 16,

            ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}