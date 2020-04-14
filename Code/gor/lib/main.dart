import 'package:flutter/material.dart';
import 'package:gor/constants.dart';
import 'package:gor/scheduling_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/WelcomeScreen': (BuildContext context) => WelcomeScreen(),
        '/SchedulingPage': (BuildContext context) => SchedulingPage()
      },
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: kPrimaryColor1,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: kPrimaryColor2,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 60, left: 25),
                          child: Text(
                            "Gor",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 50),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: kPrimaryColor3,
                ),
              )
            ],
          ),
          Positioned(
            bottom: 133,
            left: 72,
            child: Image.asset("assets/image.jpg"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context).pushNamed('/SchedulingPage');
        },
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
