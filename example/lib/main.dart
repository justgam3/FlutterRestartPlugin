import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_restart/flutter_restart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
//          child: Text('Running on: $_platformVersion\n'),
          child: MaterialButton(
            onPressed: () async {
              final result = await FlutterRestart.restartApp();
              print(result);
            },
            color: Colors.blueAccent,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Click me',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
