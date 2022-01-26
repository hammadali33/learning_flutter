import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/bottom_Sheets/test.dart';


class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  List colors = [
    Colors.red,
    Colors.green,
  ];

  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          "My App",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 5,
        toolbarHeight: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        // leadingWidth: 150,
        actions: [
          Icon(Icons.refresh),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView(

        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: colors.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 200.0,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              // childAspectRatio: 0.0,
              // mainAxisExtent:
            ),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Test(),
                );
              },
              child: Container(
                color: colors[index],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("$counter"),
                    ElevatedButton(
                      onPressed: () => count(),
                      child: Text("Press Me"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter = 0;
                        });
                      },
                      child: Text("Reset"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          largeheading("Large Heading"),
          heading("Heading"),
          subHeading("Sub Heading"),
          normalText("Normal Text"),
        ],
      ),
    );
  }
  void count() {
    setState(() {
      counter++;
    });
  }

  Widget largeheading(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w600
      ),
    );
  }
  Widget heading(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w600
      ),
    );
  }
  Widget subHeading(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.w500
      ),
    );
  }
  Widget normalText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
        color: Colors.black,
      ),
    );
  }
}
