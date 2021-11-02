import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/profile.dart';


class Messenger extends StatefulWidget {
  const Messenger({Key key}) : super(key: key);

  @override
  _MessengerState createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Profile(),),);
            },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(240, 240, 240, 1),
          ),
          iconSize: 25,
        ),
        actions: [
          Container(
            child: FlatButton.icon(
                onPressed: (){},
                icon: Icon(
                  Icons.refresh_outlined,
                  color: Color.fromRGBO(240, 240, 240, 1),
                ),

            label: Text(
                "Refresh",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w800,
                color: Color.fromRGBO(240, 240, 240, 0.8),
              ),
            ),
            ),
          ),
        ],
        centerTitle:true ,
       title: Text(
            "Messages",
         style: TextStyle(
           fontSize: 20,
           fontWeight: FontWeight.w800,
           color: Color.fromRGBO(240, 240, 240,  1),
         ),
        ),
      ),

    );
  }
}
