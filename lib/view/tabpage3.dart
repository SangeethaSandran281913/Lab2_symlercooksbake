
import 'package:symlercooksbake/view/aboutpage.dart';
import 'package:flutter/material.dart';
import 'package:symlercooksbake/model/user.dart';
import 'package:symlercooksbake/view/loginpage.dart';

class TabPage3 extends StatefulWidget {
  final User user;
  const TabPage3({Key? key, required this.user}) : super(key: key);

  @override
  _TabPage3State createState() => _TabPage3State();
}

class _TabPage3State extends State<TabPage3> {
  late double screenHeight, screenWidth, resWidth;

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
                  const Center(
                    child: Text("PROFILE",
                          style: TextStyle(  
                          color: Colors.blueGrey,   
                          fontFamily: 'TIMES NEW ROMAN',                    
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                      child: ListView(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                          shrinkWrap: true,
                          children: [

                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AboutPage()));
                          },
                          child: const Text("ABOUT US",
                          style: TextStyle(  
                          color: Colors.blueGrey,   
                          fontFamily: 'Raleway',                    
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                        ),

                        
                        MaterialButton(
                          onPressed: _loginDialog,
                          child: const Text("SWITCH ACCOUNT",
                          style: TextStyle(  
                          color: Colors.blueGrey,   
                          fontFamily: 'Raleway',                    
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                        ),
                        const Divider(
                          height: 2,
                        ),
                        
                        const Divider(
                          height: 2,
                        ),
                        MaterialButton(
                          onPressed: _logOut,
                          child: const Text("LOGOUT",
                          style: TextStyle(  
                          color: Colors.blueGrey,   
                          fontFamily: 'Raleway',                    
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          
                        )),
                        ),
                        const Divider(
                          height: 2,
                        ),
                      ])),
                ],
              ),
            )),
      ],
    ));
  }


  void _loginDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: const Text(
            "Go to Login Page",
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
          content: const Text(
            "Are you sure?",
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                "Yes",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const LoginPage()));
              },
            ),
            TextButton(
              child: const Text(
                "No",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

 

  void _logOut() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: const Text(
            "Are you sure you would like to log out?",
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
         
          actions: <Widget>[
            TextButton(
              child: const Text(
                "Yes",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const LoginPage()));
              },
            ),
            TextButton(
              child: const Text(
                "No",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );

  }
}
