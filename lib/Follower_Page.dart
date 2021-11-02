import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/posts_page.dart';
import 'package:flutter_project/profile.dart';

import 'Models/Models.dart';

List<FollowerModel> followermodel = [
  FollowerModel(username: "Sakib Al Hasan",
    imageURL: "https://images.indianexpress.com/2020/05/shakib-al-hasan-fb.jpg",
    friends: 25221,),
  FollowerModel(
    username: "Musfiqur Rahim",
    imageURL: "https://1.bp.blogspot.com/-RqpjzhV2mbU/YMX9MSPyjRI/AAAAAAAABtM/6Id1JZy4xI4ap3F01IHBjyRpOCQKmiipQCPcBGAYYCw/w640-h640/Untitled%2Bdesign.png",
    friends: 22952,),
  FollowerModel(
    username: "Mustafizur Rahman",
    imageURL: 'https://www.facebook.com/Official.Mustafizur90',
    friends: 45216,),
  FollowerModel(
    username: "Tamim Iqbal",
    imageURL: "https://www.facebook.com/TamimOfficial",
    friends: 25520,),
  FollowerModel(
    username: "Mashrafe Bin Mortaza",
    imageURL: "https://www.facebook.com/Official.Mashrafe",
    friends: 8932,),
  FollowerModel(
    username: "Liton Kumar Das",
    imageURL: "https://www.facebook.com/Official.Litton",
    friends: 32654,),
  FollowerModel(
    username: "Mahmudullah Riyad",
    imageURL: "https://www.facebook.com/Mahmudullah.Riyad",
    friends: 22551,),
  FollowerModel(
    username: "Sabbir Rahman",
    imageURL: "https://www.facebook.com/OfficialShabbir",
    friends: 48922,),

];
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
      body: Align(
        alignment: Alignment.centerLeft,
        child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15),
            itemCount: followermodel.length ,
            itemBuilder:(BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage:
                      NetworkImage("${followermodel[index].imageURL}"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: "${followermodel[index].username}\n",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(21, 21, 21, 0.6)
                          ),
                          children: [
                            TextSpan(
                              text: "Frinends: ${followermodel[index].friends}",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(21, 21, 21, 0.6)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
        ),
      ),
    );
  }
}
