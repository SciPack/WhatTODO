import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: "WhatTODO",
  theme: ThemeData( primarySwatch: Colors.blue, ),
  home: App(),
));

class App extends StatefulWidget {
  @override
  AppState createState() => new AppState();
}

class AppState extends State<App> {

  List<String> listContent = ["one", "two", "three"];
  List<bool> listChecked = [false, false, false];

  void changeListTileChecked(int index, bool value) {
    setState(() {
      listChecked[index] = value;
    });
  }

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
        body: ListView.builder(
            itemCount: listContent.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Checkbox(value: listChecked[index], onChanged: (bool value) { changeListTileChecked(index, value); }),
                title: Text(listContent[index]),
                onLongPress: () { changeListTileChecked(index, !listChecked[index]); },
                onTap: () { print("this is a tap"); },
              );
            }
        )
    );
  }
}
