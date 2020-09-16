import 'package:flutter/material.dart';
import 'package:flutter_app/about.dart';

class Home extends StatefulWidget {
 

  @override
  State<StatefulWidget> createState() {
   
    return _HomeState();
  }

}

class _HomeState extends State<Home> {
 var messageText = TextEditingController();
 String title = "";
 @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        children: <Widget>[
          TextField(controller: messageText,),
          
          RaisedButton(
            onPressed: (){
              setState(() {
                title = messageText.text;
              });
             Navigator.push(context, MaterialPageRoute(builder: (context){
              return About(title);
             }));
            },
            child: Text('Go to About Screen'),
          ),
       
        
         ],
      ), 
     );
   }
  } 