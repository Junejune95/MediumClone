import 'package:flutter/material.dart';
import 'package:mediumClone/ui/pages/home-page.dart';
import 'package:mediumClone/ui/pages/main-page.dart';
import 'package:mediumClone/ui/styles/app-style.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Medium",
            style: welcomeFont,
          ),
          RaisedButton(
            child: Text("Go"),
            onPressed: () {
              // print("hello");
              Navigator.of(context).push(
                MaterialPageRoute(builder: (c) => MainPage()),
              );
            },
          )
        ],
      ),
    );
  }
}
