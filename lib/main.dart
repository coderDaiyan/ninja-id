// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: NinjaCard()));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel = ninjaLevel + 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.pngitem.com/pimgs/m/111-1114839_circle-people-icon-flat-png-avatar-icon-transparent.png'),
                    radius: 40,
                  ),
                ),
                Divider(
                  height: 60,
                  color: Colors.grey[800],
                ),
                Text(
                  'NAME',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Chun-Li',
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Current Ninja Level',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '$ninjaLevel',
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Row(children: <Widget>[
                  Icon(Icons.email, color: Colors.grey[400]),
                  SizedBox(width: 10),
                  Text(
                    'daiyanabdallah@gmail.com',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 13,
                        letterSpacing: 1),
                  )
                ])
              ])),
    );
  }
}
