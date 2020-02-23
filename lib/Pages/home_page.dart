import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_flutter_project/constant.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Image.asset(
                  Theme.of(context).brightness == Brightness.light
                      ? 'images/light/github_PNG20-4.png'
                      : 'images/dark/github_PNG20-3.png',
                  width: 200,
                  height: 200,
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Theme(
                    data: ThemeData(
                      primaryColorLight: Colors.grey.shade300,
                      primaryColorDark: Colors.grey.shade300,
                      primaryColor: Colors.grey.shade300,
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter the name of the github user'),
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.black
                                  : Colors.white),
                    ),
                  )),
              GestureDetector(
                onTap: () {
                  print('helloo');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kHomePageButtonBackGroundColor,
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.black
                          : Colors.white,
                      width: 2.0,
                    ),
                  ),
                  height: 50.0,
                  child: Center(
                    child: Text(
                      'Get Followers',
                      style: kHomeButtonTextStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
