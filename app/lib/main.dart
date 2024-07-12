import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[900],
        ),
        body:  Center(
            child: Text(
              'Hello',
              style: TextStyle(
                // fontFamily: 'Montserrat-Italic',
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.lightBlue[900]
              ),
            ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.lightBlue[900],
          child: const Text('click'),
        ),
      )
    );
  }
}
