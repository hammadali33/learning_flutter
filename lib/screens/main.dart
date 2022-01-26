import 'dart:ui';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var btnBgClr = Colors.grey;
  var btnTextClr = Colors.black;
  String before = "Enter Number";
  String after = "Continue";

  List items = [
    'item 1',
    'item 2',
    'item 3',
    'item 4',
    'item 5',
    'item 6',
    'item 7',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Functionality"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/minions-uhd-8k-wallpaper.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        body: Container(
          child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    if (value.length == 11) {
                      btnBgClr = Colors.green;
                      btnTextClr = Colors.white;
                    } else {
                      btnBgClr = Colors.grey;
                      btnTextClr = Colors.black;
                    }
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "+92 000 0000 000",
                  prefixIcon: Container(
                    width: 100,
                    height: 40,
                    child: CountryCodePicker(
                      boxDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      onChanged: print,
                      initialSelection: 'PK',
                      favorite: ['+92', 'PK'],
                      showFlag: true,
                      backgroundColor: Colors.transparent,
                      alignLeft: false,
                      hideSearch: true,
                    ),
                  ),
                ),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  color: btnBgClr,
                  textColor: btnTextClr,
                  child: Text("${btnBgClr == Colors.green ? after : before}"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: Stack(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/1_qLw7bQ7iKrXWLtL2p-lzdw.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.white.withOpacity(0.2),
                          child: Center(
                            child: Text(
                              "This is Blur",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 2,
                ),
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) => Selections(
                  item: items[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Selections extends StatefulWidget {
  var item;

  Selections({
    this.item,
  });

  @override
  _SelectionsState createState() => _SelectionsState();
}

class _SelectionsState extends State<Selections> {
  var btnBgClr = Colors.grey;
  var btnTextClr = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: RaisedButton(
            onPressed: () {
              setState(() {
                if (btnBgClr == Colors.grey) {
                  btnBgClr = Colors.green;
                  btnTextClr = Colors.white;
                } else {
                  btnBgClr = Colors.grey;
                  btnTextClr = Colors.black;
                }
              });
            },
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: btnBgClr,
            textColor: btnTextClr,
            child: Text("${widget.item}"),
          ),
        ),
      ],
    );
  }
}
