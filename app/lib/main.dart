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
        body: Container(
              // LayoutBuilder lets you addapt your layouts to the width of your screen.
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // Let's set the width of our textFields upto 50% of the screen
                  double textFieldWidth = constraints.maxWidth*0.30;
                  double textFieldHeigh = constraints.maxHeight;
                  double imageWidth = constraints.maxWidth*0.70;
            
                  return Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // Set container width
                            width: textFieldWidth,
                            height: textFieldHeigh,
                            padding: const EdgeInsetsDirectional.symmetric(horizontal: 30.0, vertical: 20.0),
                            color: Colors.grey[300],
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
                                          padding: EdgeInsets.symmetric(horizontal: 35.00, vertical: 20.0), // Increase button size
                                          textStyle: const TextStyle(fontSize: 20), // Increase font size
                                      ),
                                      onPressed: () {}, 
                                      child: const Text("Login")
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(horizontal: 35.00, vertical: 20.0), // Increase button size
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
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: imageWidth,
                            child: Image(
                              image: NetworkImage("https://cdn.pixabay.com/photo/2018/03/26/14/07/space-3262811_1280.jpg")),
                          )
                        ],),
                    ],
                  );
                }
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
