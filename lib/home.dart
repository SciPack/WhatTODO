import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What TODO?"),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.settings),
            onPressed: () { print("settings"); }
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () { print("search..."); },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () { print("Add"); }
      ),
    );
  }
}