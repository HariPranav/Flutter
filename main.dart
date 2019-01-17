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
          //body:
          /*Padding(
          padding: EdgeInsets.only(top : 40.0,left: 20),
          child: Text("" , style: TextStyle(fontSize: 30),),*/

          body: Column(
            children: <Widget>[
              Container(
                color: Colors.greenAccent,
                width: 450,
                height: 230,
                child: Center(
                  child: Text(
                    'Crop1',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
               Container(
                color: Colors.orangeAccent,
                width: 450,
                height: 230,
                child: Center(
                  child: Text(
                    'Crop2',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
                Container(
                color: Colors.yellowAccent,
                width: 450,
                height: 234,
                child: Center(
                  child: Text(
                    'Crop3',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              
              /*To Format the Text within the Text widget 
          Text('This is America', style: TextStyle(fontSize: 30),),
          */

              /*To add a Box Decoration Such as a border
           
          decoration: BoxDecoration(
            color: Colors.limeAccent,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 2),
            */
            ],
          )),
    );
  }
}

class Crop2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      width: 450,
      height: 200,
      child: Center(
        child: Text(
          'Crop1',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
