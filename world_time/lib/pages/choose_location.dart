import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, '/loading'),
              child: Row(
                children: <Widget>[
                  Icon(Icons.flag),
                  SizedBox(width: 20.0),
                  Text('Germany', style: TextStyle(fontSize: 20.0),),
                ],
              ),
            ),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, '/loading'),
              child: Row(
                children: <Widget>[
                  Icon(Icons.flag),
                  SizedBox(width: 20.0),
                  Text('Germany', style: TextStyle(fontSize: 20.0),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
