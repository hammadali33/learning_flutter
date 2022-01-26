import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  List<String> myTitles = [
    'Hammad',
    'Adeel Ahmad',
    'Suffi',
    'Ahad Khan',
    'Reshail Rana',
    'Usama Shahid'
  ];

  List icons = [
    'assets/1_9-ujy3CCBhrpkvS7TMLcoQ.png',
    'assets/1_qLw7bQ7iKrXWLtL2p-lzdw.png',
    'assets/assassins-creed-ezio-auditore-da-firenze-uhd-4k-wallpaper.jpg',
    'assets/assassins-creed-origins-bayek-of-siwa-uhd-8k-wallpaper.jpg',
    'assets/batman-arkham-knight-suit-uhd-4k-wallpaper.jpg',
    'assets/download.jpg',
  ];

  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My List View"),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: widget.myTitles.length,
            itemBuilder: (context, index) => MyContent(
              title: widget.myTitles[index],
              icon: widget.icons[index],
            ),
          ),
        ],
      ),
    );
  }
}

class MyContent extends StatelessWidget {
  var title, icon;

  MyContent({
    this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Image.asset(
        '${icon}',
        height: 30,
      ),
      title: Text("${title}"),
    );
  }
}
