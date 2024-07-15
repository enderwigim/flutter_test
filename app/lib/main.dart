import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
} 
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool login = true;

  void tooglePage() {
    setState(() {
      login = !login;
    });
  }


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
                            color: Colors.grey[200],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                  login? LoginPage() : RegisterPage(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.symmetric(horizontal: 35.00, vertical: 20.0), // Increase button size
                                            textStyle: const TextStyle(fontSize: 20), // Increase font size
                                        ),
                                        onPressed: tooglePage, 
                                        child: const Text("Login")
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.symmetric(horizontal: 35.00, vertical: 20.0), // Increase button size
                                            textStyle: const TextStyle(fontSize: 20), // Increase font size
                                        ),
                                        onPressed: tooglePage, 
                                        child: const Text("Register")
                                      ),
                                    ],
                                  )
                                ],),
                            )
                          ],
                        ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: imageWidth,
                            child: Image.asset(
                              ("../assets/img/integra.PNG"),
                              fit: BoxFit.fill),
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


class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              text: 'Integra',
              style: TextStyle(
                fontSize: 30.00
                ),
              children: [
                TextSpan(
                  text: 'QS',
                  style: TextStyle(
                    fontSize: 30.00
                  ),
                )
              ]
            )),
          const SizedBox(height: 100.0),
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
      );
  }
}

class RegisterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              text: 'Integra',
              style: TextStyle(
                fontSize: 30.00
                ),
              children: [
                TextSpan(
                  text: 'QS',
                  style: TextStyle(
                    fontSize: 30.00
                  ),
                )
              ]
            )),
          const SizedBox(height: 100.0),
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
          const SizedBox(height: 20.0),
          
          const TextField(
            decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Confirm Password",)
          ),
        ],
      );
  }
}

