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
        body: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            new NetworkImage(
                'https://static1.squarespace.com/static/577c209ad482e935c6b1e2a4/t/5b0df6ae1ae6cff4f8f03a6e/1527641806065/garden_club_blog.jpg?format=10000w'),
            new NetworkImage(
                'https://static1.squarespace.com/static/577c209ad482e935c6b1e2a4/t/5b718427562fa71f5e582085/1534166074632/tomato_9_18.jpg?format=100000w'),
            new NetworkImage(
                'https://static1.squarespace.com/static/577c209ad482e935c6b1e2a4/t/58f56462c534a5b6189ae0ef/1492477039659/?format=10000w'),
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
