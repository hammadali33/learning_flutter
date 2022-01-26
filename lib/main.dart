import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/screens/bottom_NavigationBar.dart';
import 'package:learning_flutter/screens/butttons.dart';
import 'package:learning_flutter/screens/gridView.dart';
import 'package:learning_flutter/screens/homePage.dart';
import 'package:learning_flutter/screens/listView.dart';
import 'package:learning_flutter/screens/tab_Bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Learn Flutter',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          scaffoldBackgroundColor: Colors.white,
          canvasColor: Colors.transparent,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(splashColor: Colors.green),
        ),
        // home: MyHomePage(title: 'Flutter Course',),
        initialRoute: 'bottom_NavigationBar',
        getPages: [
          GetPage(name: 'homePage', page: () => MyHomePage()),
          GetPage(name: 'listView', page: () => MyListView()),
          GetPage(name: 'bottom_NavigationBar', page: () => BottomBar()),
          GetPage(name: 'tab_Bar', page: () => Tab_Bar()),
          GetPage(name: 'buttons', page: () => MyButtons()),
          GetPage(name: 'gridView', page: () => MyGridView()),
        ]);
  }
}
