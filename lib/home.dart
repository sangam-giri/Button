import 'package:flutter/material.dart';

//This project used different types of buttons used in Flutter namely: Elevated Button, Text Button, Flat Button
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Elevated Button
              ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
              //Circular Elevated Button
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.alarm),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(24),
                ),
              ),
              //Text Button
              TextButton(onPressed: () {}, child: Text('Text Button')),
              //Outlined Button
              OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
              //Using Container as Elevated Button with Gesture Control
              new GestureDetector(
                onTap: () {
                  print('Container Selected');
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
