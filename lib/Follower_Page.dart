import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/posts_page.dart';
import 'package:flutter_project/profile.dart';

class Follower_Page extends StatefulWidget {
  const Follower_Page({Key key}) : super(key: key);

  @override
  _Follower_PageState createState() => _Follower_PageState();
}

class _Follower_PageState extends State<Follower_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 240, 240, .6),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(21, 21, 21, .6),
          ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>Profile(),
              ),
            );
          },
          iconSize: 20,
        ),
        title: Text(
          "Follower",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color.fromRGBO(21, 21, 45, .6),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.refresh_outlined,
                color: Color.fromRGBO(21, 21, 45, .6),
              ),
              iconSize: 20,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=>Follower_Page(),
                  ),
                );
              }
          ),
        ],
      ),

    );
  }
}
