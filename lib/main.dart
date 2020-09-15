import 'package:flutter/material.dart';
import 'home.dart';

void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("App title"),
          actions: <Widget>[
            Icon(Icons.search),
            Icon(Icons.shopping_cart)
          ],
        ),
        drawer: Drawer(),
        body: Home(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.purple,),
              title: Text("Home", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green),)

            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.deepOrange,),
              title: Text("Amount", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.green), )
              ),
          ],
          
          )
      ), 
     )
   
  );
}