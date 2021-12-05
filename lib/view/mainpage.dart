import 'package:flutter/material.dart';
import 'package:symlercooksbake/model/user.dart';
import 'tabpage1.dart';
import 'tabpage2.dart';
import 'tabpage3.dart';

class MainPage extends StatefulWidget {
  final User user;
  const MainPage({Key? key, required this.user}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double screenHeight = 0.0, screenWidth = 0.0;
  late List<Widget> tabchildren;
  int _currentIndex = 0;
  String maintitle = "Symler";

  @override
  void initState() {
    super.initState();
    tabchildren = [
      TabPage1(
        user: widget.user,
      ),
      TabPage2(user: widget.user),
      TabPage3(
        user: widget.user,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Symler Cooks & Bake',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Raleway',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  )),
                   actions: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                },
              ),
              
            ],
          ),
        ],
      ),
      body: tabchildren[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Colors.black,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity), label: "Account")
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        maintitle = "Home";
      }
      if (_currentIndex == 1) {
        maintitle = "Menu";
      }
      if (_currentIndex == 2) {
        maintitle = "Account";
      }
    });
  }
}
