import 'package:flutter/material.dart';

class MyButtons extends StatefulWidget {
  @override
  _MyButtonsState createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.green,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: MyElevatedButton(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                  onPressed: (){},
                 child: Center(
                    child: Text(
                   "Elevated Button",
                   style: TextStyle(color: Colors.black),
                ))),
              ),
            ],
          )),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){},
        child: Center(
            child: Text(
              "Elevated Button",
              style: TextStyle(color: Colors.black),
            )));
  }
}

