import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/gridView.dart';
import 'package:learning_flutter/screens/homePage.dart';
import 'package:learning_flutter/screens/listView.dart';
import 'package:learning_flutter/screens/tab_Bar.dart';
class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var currentIndex = 0;
  final List pages = [
    MyListView(),
    MyHomePage(),
    MyGridView(),
    Tab_Bar(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        elevation: 5,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedLabelStyle: TextStyle(
          color: Colors.grey
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "settings",
          ),

        ],
      ),
    );
  }
}
