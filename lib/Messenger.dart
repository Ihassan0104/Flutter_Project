import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/profile.dart';

List<String> imagesAvatar = [
  "images/Profile_Images/user_1.jpg",
  "images/Profile_Images/user_2.jpg",
  "images/Profile_Images/user_3.jpg",
  "images/Profile_Images/user_4.jpg",
  "images/Profile_Images/user_5.jpg",
  "images/Profile_Images/user_6.jpg",
  "images/Profile_Images/user_7.jpg",
  "images/Profile_Images/user_8.jpg",
  "images/Profile_Images/user_9.jpg",
];


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
          IconButton(

                icon: Icon(
                  Icons.refresh_outlined,
                  color: Color.fromRGBO(240, 240, 240, 1),
                ),
            iconSize: 20,
            onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Messenger(),
                      ),
                  );
                 },
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
      body: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          children: [

            //Header list view container
            Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagesAvatar.length,
                  itemBuilder: (BuildContext context, int index){
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: MediaQuery.of(context).size.height/4,
                    width: MediaQuery.of(context).size.width/8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 3,
                        style: BorderStyle.solid,
                      ),
                      image: DecorationImage(
                        image:AssetImage("${imagesAvatar[index]}"),
                          fit:BoxFit.contain,
                      ),
                    ),
                  );
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
