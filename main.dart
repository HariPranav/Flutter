import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            print('Hello');
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          /*Code To create an icon  : actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("La La La La Tin Tin Thin Alladeen Modafuka");
              },
            )
          ],*/
          title: Text('Thug ༼ຈل͜ຈ༽ Farmer'),
        ),
        body: Padding(
          padding: EdgeInsets.only(top : 40.0,left: 20),
          child: Text("Hello World" , style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}
