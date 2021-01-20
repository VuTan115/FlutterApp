import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  String name;
  int age;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

  MyApp({this.name, this.age}); // named-argument
  MyApp.namedConstructor([this.name, this.age]); //positional-argument
}

class _MyAppState extends State<MyApp> {
  String _email = '';
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                controller: emailController,
                onChanged: (text) {
                  this.setState(() {
                    _email = text;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10))),
                  labelText: "Enter your email here",
                ),
              ),
            ),
            Text(
              "See result below!",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            Text(
              _email,
              style: TextStyle(fontSize: 20, color: Colors.blueAccent),
            )
          ],
        )),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
