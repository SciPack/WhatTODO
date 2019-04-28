import 'package:flutter/material.dart';

List<String> listContent = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", " ten", "eleven", "twelve", "thirteen"];

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
      body: ListView.builder(
        itemCount: listContent.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Checkbox(value: false, onChanged: null),
            title: Text(listContent[index]),
          );
        }
      )
    );
  }
}