import 'package:flutter/material.dart';

class Tab_Bar extends StatefulWidget {

  @override
  _Tab_BarState createState() => _Tab_BarState();
}

class _Tab_BarState extends State<Tab_Bar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "taber_lec7", style: TextStyle(
                color: Colors.yellow[600], fontStyle: FontStyle.italic),
            ),
          ),
          elevation: 8,

          bottom: PreferredSize(
            preferredSize: Size(0, 40),
            child: Container(
              child: TabBar(
                indicatorColor: Colors.black,

                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                labelPadding: EdgeInsets.only(bottom: 6, left: 15, right: 15),
                isScrollable: true,
                unselectedLabelColor: Colors.tealAccent,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),

                tabs: [
                  Text(
                    "Updates", style: TextStyle(fontStyle: FontStyle.italic),),
                  Text("Installed",
                    style: TextStyle(fontStyle: FontStyle.italic),),
                  Text(
                    "Library", style: TextStyle(fontStyle: FontStyle.italic),),
                  Text("Uninstall",
                    style: TextStyle(fontStyle: FontStyle.italic),),
                  Text(
                    "Features", style: TextStyle(fontStyle: FontStyle.italic),),
                  Text(
                    "Favourit", style: TextStyle(fontStyle: FontStyle.italic),),
                  Text(
                    "Recent", style: TextStyle(fontStyle: FontStyle.italic),),


                ],
              ),

            ),
          ),


        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                // margin: EdgeInsets.only(left: 8,right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 20,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("#TechDesign"),
                            VerticalDivider(color: Colors.black26),
                            Text("#Reform"),
                            VerticalDivider(color: Colors.black26),
                            Text("#HealthCareRevolution"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 242,
                      child: Image(
                        image: AssetImage("assets/images (3).jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 90,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: FittedBox(
                              child: Text(
                                "WORLD",
                                textAlign: TextAlign.start,
                                style:
                                TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Text(
                            "The Quite, Yet Powerful Healthcare Revolution",
                            style: TextStyle(fontSize: 16),

                          ),
                        ],
                      ),
                    ),
                    Divider(color: Colors.black26,),
                    Container(
                      height: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 120,
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(child: FittedBox(child: Text(
                                  "POLITICS", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,),))),
                                Text("Divided Americans Lives During War"),
                              ],
                            ),
                          ),
                          Container(
                            height: 70,
                            color: Colors.red,
                            width: 90,
                            child: Image(
                              image: AssetImage("assets/download.jpg"),
                              fit: BoxFit.cover,
                            ),

                          )


                        ],
                      ),
                    ),
                    Divider(color: Colors.black26,),
                    Container(
                      height: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 120,
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(child: FittedBox(child: Text(
                                  "POLITICS", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,),))),
                                Text("Divided Americans Lives During War"),
                              ],
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 90,
                            child: Image(
                              image: AssetImage("assets/download.jpg"),
                              fit: BoxFit.cover,
                            ),

                          )


                        ],
                      ),
                    ),
                    Divider(color: Colors.black26),
                    Container(
                      color: Colors.white,
                      height: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 120,
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(child: FittedBox(child: Text(
                                  "POLITICS", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,),))),
                                Text("Divided Americans Lives During War"),
                              ],
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              // shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(100),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image(
                                image: AssetImage("assets/download.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),

                          ),
                        ],
                      ),
                    ),
                    Divider(color: Colors.black26,),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.white,
                      height: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 120,
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(child: FittedBox(child: Text(
                                  "POLITICS", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,),))),
                                Text("Divided Americans Lives During War"),
                              ],
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              // shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(100),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image(
                                image: AssetImage("assets/download.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),

                          ),
                        ],
                      ),
                    ),
                    Divider(color: Colors.black26,),
                  ],
                ),
              ),
            ),
            Center(child: Text(
              "Installed", style: TextStyle(fontSize: 50, color: Colors.red),)),
            Center(child: Text(
              "Library", style: TextStyle(fontSize: 50, color: Colors.red),)),
            Center(child: Text(
              "Uninstall", style: TextStyle(fontSize: 50, color: Colors.red),)),
            Center(child: Text(
              "Features", style: TextStyle(fontSize: 50, color: Colors.red),)),
            Center(child: Text(
              "Favourit", style: TextStyle(fontSize: 50, color: Colors.red),)),
            Center(child: Text(
              "Recent", style: TextStyle(fontSize: 50, color: Colors.red),)),
          ],
        ),
      ),
    );
  }
}
