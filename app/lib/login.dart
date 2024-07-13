import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        body: Center(
          child: Container(
            // LayoutBuilder lets you addapt your layouts to the width of your screen.
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Let's set the width of our textFields upto 50% of the screen
                double textFieldWidth = constraints.maxWidth*0.50;
                double height = constraints.maxHeight*0.60;
          
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // Set container width
                      width: textFieldWidth,
                      height: height,
                      padding: const EdgeInsetsDirectional.symmetric(horizontal: 30.0, vertical: 20.0),
                      color: Colors.cyan,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const TextField(
                                  decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "User"
                                  ),
                                ),
                                
                                const SizedBox(height: 20.0),
                                
                                const TextField(
                                  decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "Password",)
                                ),
                              ],
                            ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0), // Increase button size
                                    textStyle: const TextStyle(fontSize: 20), // Increase font size
                                ),
                                onPressed: () {}, 
                                child: const Text("Login")
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0), // Increase button size
                                    textStyle: const TextStyle(fontSize: 20), // Increase font size
                                ),
                                onPressed: () {}, 
                                child: const Text("Register")
                              ),
                            ],
                          )
                        ],),
                    )
                  ],
                );
              }
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
