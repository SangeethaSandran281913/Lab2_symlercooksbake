import 'package:flutter/material.dart';
import 'package:symlercooksbake/model/user.dart';

class TabPage1 extends StatefulWidget {
  final User user;
  const TabPage1({Key? key, required this.user}) : super(key: key);

  @override
  State<TabPage1> createState() => _TabPage1State();
}

class _TabPage1State extends State<TabPage1> {
  List productlist = [];
  String title = "Special Deals";
  late double screenHeight, screenWidth, resWidth;

  @override
  void initState() {
    super.initState();
    _loadProduct();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth <= 600) {
      resWidth = screenWidth * 0.85;
    } else {
      resWidth = screenWidth * 0.75;
    }

     return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text("Christmas Special",
                        style: TextStyle(  
                        color: Colors.blueGrey,   
                        fontFamily: 'Times New Roman',                    
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),

              Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              height: 300,
              width: 700,
              child: Image.asset("assets/images/cake1.jpg"),
              
            ), 
            const Text('''Double Coffee Chocolate Cake with Chocolate Fudge Frosting   (1 Kg) 

RM 85.00''',
                        style: TextStyle(  
                        color: Colors.black87,   
                        fontFamily: 'Times New Roman',                    
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )),],
              ),
            )),
      ],
    ));   
  }

  _loadProduct() {

  }
}
