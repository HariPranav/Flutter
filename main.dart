import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      showSemanticsDebugger: false,
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
      debugShowCheckedModeBanner: false,
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
          animationDuration: Duration(seconds: 2),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen()));
          },
          child: Icon(Icons.arrow_forward),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text('Thug ༼ຈل͜ຈ༽ Farmer'),
            backgroundColor: Colors.black,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {},
              )
            ]),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Image.network('https://www.bigbasket.com/media/uploads/p/l/50000557_5-fresho-tomato-hybrid-organically-grown.jpg'),
            Image.network('https://www.bigbasket.com/media/uploads/p/l/40023472_3-fresho-onion-organically-grown.jpg'),
            Image.network('https://www.bigbasket.com/media/uploads/p/l/10000272_11-fresho-carrot-ooty.jpg'),
            Image.network('https://www.bigbasket.com/media/uploads/p/l/40023476_4-fresho-potato-organically-grown.jpg'),
            Image.network('https://www.bigbasket.com/media/uploads/p/l/10000284_11-fresho-green-peas.jpg'),
            Image.network('https://www.bigbasket.com/media/uploads/p/l/10000273_13-fresho-mushrooms-button.jpg'),
            Image.network('https://www.bigbasket.com/media/uploads/p/l/50000506_4-fresho-garlic-organically-grown.jpg'),
            Image.network('https://www.bigbasket.com/media/uploads/p/l/40022635_4-fresho-beetroot-organically-grown.jpg'),
            Image.network('https://www.bigbasket.com/media/uploads/p/l/40023480_3-fresho-ginger-organically-grown.jpg'),
            Image.network('https://www.bigbasket.com/media/uploads/p/l/40023473_4-fresho-cabbage-organically-grown.jpg'),
            
            
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_forward),
          backgroundColor: Colors.black,
        ),
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
        //body: LoginScreen();
      ),
    );
  }
}

//https://images5.alphacoders.com/420/420022.jpg
