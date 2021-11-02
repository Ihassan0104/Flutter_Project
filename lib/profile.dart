import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/Follower_Page.dart';
import 'package:flutter_project/Following_Page.dart';
import 'package:flutter_project/Messenger.dart';
import 'package:flutter_project/editpage.dart';
import 'package:flutter_project/posts_page.dart';
import 'package:flutter_project/profile.dart';
import 'package:flutter_project/splash.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,MaterialPageRoute(builder:(context)=>Splash(),),);
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 19,
        ),
        title: Text(
          "My Profile",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Colors.black,
            fontStyle: FontStyle.normal,
          ),
        ),

        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>EditPage(),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Container(
                height: 20,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blueAccent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Icon(Icons.create_sharp,size: 18,),
                  ],
                ),
              ),
            ),
          )
        ],

      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //profile image and name container
                Container(
                  height: MediaQuery.of(context).size.height/6,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Container(
                        height: MediaQuery.of(context).size.height/3,
                        width: MediaQuery.of(context).size.width/4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/hasina.jpg"),
                            fit:BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Color.fromRGBO(36, 36, 45, 1),
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      //profile name and address column
                      Container(
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width/1.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Text(
                                "Sheikh Hasina",
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromRGBO(252, 0, 0, 1),
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Text(
                              'National Parliament House,'
                                  'Sher-e-Bangla Nagar, Dhaka',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Color.fromRGBO(15, 117, 0,1),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Bio container
                Container(
                  height: MediaQuery.of(context).size.height/2.5,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    bottom:MediaQuery.of(context).size.height/5,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Text and icon container
                      Container(
                        height: MediaQuery.of(context).size.height/9,
                        width: MediaQuery.of(context).size.width/8,
                        margin: EdgeInsets.only(
                          right:MediaQuery.of(context).size.width/1.3,
                          top: MediaQuery.of(context).size.height/20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bio',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                                color: Color.fromRGBO(252, 0, 0, 1),
                              ),
                            ),
                            Icon(
                              Icons.create_rounded,
                              color: Color.fromRGBO(252, 0, 0, 1),
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                      //text container
                      Container(
                        height: MediaQuery.of(context).size.height/4.6,
                        width: MediaQuery.of(context).size.width ,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Text(
                          'Sheikh Hasina, also '
                              "known by her married name Sheikh Hasina Wazed, "
                              "is a Bangladeshi politician who has been serving as "
                              "the Prime Minister of Bangladesh since January 2009. "
                              "She previously served as prime minister from June 1996 to July 2001.",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(15, 117, 0,1),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),

                //wrap widget container
                Container(
                  height: MediaQuery.of(context).size.height/6 ,
                  width: MediaQuery.of(context).size.width,
                  child: Wrap(
                    spacing: 5,
                      runSpacing: 10,
                    alignment: WrapAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height/15,
                        width: MediaQuery.of(context).size.width/4,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(31, 31, 31, 1),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                          color: Color.fromRGBO(245, 245, 245, 0.5),
                        ),
                        child: FlatButton.icon(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>PostPage(),
                                  ),
                              );
                            },
                            icon: Icon(
                                CupertinoIcons.plus_square_on_square,
                              size: 12,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                            label: Text(
                              "Posts",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                            )
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/15,
                        width: MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(21, 21, 21, 1),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                          color: Color.fromRGBO(245, 245, 245, 0.5),
                        ),
                        child: FlatButton.icon(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>Messenger(),
                                  ),);
                            },
                            icon: Icon(
                              Icons.message_outlined,
                              size: 13,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                            label: Text(
                              "Messenger",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                            )
                        ),
                      ),
                      //Following Button container
                      Container(
                        height: MediaQuery.of(context).size.height/15,
                        width: MediaQuery.of(context).size.width/3.7,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(21, 21, 21, 1),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                          color: Color.fromRGBO(245, 245, 245, 1),
                          ),
                        child: FlatButton.icon(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>Following_Page(),
                                  ),
                              );
                            },
                            icon: Icon(
                              Icons.follow_the_signs_rounded,
                              size: 12,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                            label: Text(
                              "Following",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                            ),
                        ),
                        ),

                      Container(
                        height: MediaQuery.of(context).size.height/15,
                        width: MediaQuery.of(context).size.width/3.9,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(21, 21, 21, 1),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                          color: Color.fromRGBO(245, 245, 245, 0.5),
                        ),
                        child: FlatButton.icon(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>Follower_Page(),
                                  ),
                              );
                            },
                            icon: Icon(
                              Icons.add_circle,
                              size: 12,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                            label: Text(
                            "Follower",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
