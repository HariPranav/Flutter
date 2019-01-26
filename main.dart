import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

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
    return MaterialApp(
      home: Scaffold(
        body:  new Carousel(
              boxFit: BoxFit.cover,
              images: [
                new NetworkImage(
                    'https://static1.squarespace.com/static/577c209ad482e935c6b1e2a4/57c4adf76b8f5b2699668dfa/57c4ae5abebafb54228aa871/1472507484683/bonsai.jpg?format=100w'),
                new NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Redwood_bonsai.JPG/320px-Redwood_bonsai.JPG'),
              ],
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
      ),
    );
  }
}
