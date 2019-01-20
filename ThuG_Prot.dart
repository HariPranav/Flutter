// Building the Farmer App

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[Text('Potato'), Text('Tomato')],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart),
        backgroundColor: Colors.black,
      ),
      appBar: AppBar(
          title: Text('Thug ༼ຈل͜ຈ༽ Farmer'),
          backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            )
          ]),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // Header Part of the Drawer
            UserAccountsDrawerHeader(
              accountName: Text('Hari Pranav'),
              accountEmail: Text('haripranav98@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.teal,
                ),
              ),
              decoration: new BoxDecoration(color: Colors.black),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('HomePage'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_cart),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
