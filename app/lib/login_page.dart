import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
                fontSize: 30.00,
                color: Color.fromARGB(255, 124, 214, 255),
                fontWeight: FontWeight.w800,
                ),
              children: [
                TextSpan(
                  text: 'QS',
                  style: TextStyle(
                    fontSize: 30.00,
                    color: Color.fromARGB(255, 124, 214, 255),
                    fontWeight: FontWeight.w100,
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