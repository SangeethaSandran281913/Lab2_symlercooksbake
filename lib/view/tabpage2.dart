import 'package:flutter/material.dart';
import 'package:symlercooksbake/model/user.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TabPage2 extends StatefulWidget {
  final User user;
  const TabPage2({Key? key, required this.user}) : super(key: key);

  @override
  _TabPage2State createState() => _TabPage2State();
}

class _TabPage2State extends State<TabPage2> {
  late double screenHeight, screenWidth, resWidth;

  @override
  void initState() {
    super.initState();
    _checkUser();
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
      
     child: Container(           
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
             height: 300,
             width: 700,
             child: Image.asset("assets/images/uc.png"),
              
        ),
      );
  }

  void _checkUser() {
    if (widget.user.email == "na") {
      Fluttertoast.showToast(
          msg: "Only registered user can access this features",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          textColor: Colors.red,
          fontSize: 14.0);
    }
  }
}
