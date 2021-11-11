import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/Models/MessengerModel.dart';
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

List<MessengerModel>messengerModel =[
  MessengerModel(
    username:"Abdur Rajjak",
    lastmessage: "How are you?",
    userProfilePicture: "images/Profile_Images/user_1.jpg",
  ),
  MessengerModel(
    username:"Shakib Al Hasan",
    lastmessage: "How are you?",
    userProfilePicture: "images/Profile_Images/user_2.jpg",
  ),
  MessengerModel(
    username:"Tawsif Mahbub",
    lastmessage: "How are you?",
    userProfilePicture: "images/Profile_Images/user_3.jpg",
  ),
  MessengerModel(
    username:"Mosharraf Karim",
    lastmessage: "How are you?",
    userProfilePicture: "images/Profile_Images/user_4.jpg",
  ),
  MessengerModel(
    username:"Chancol Chowdhury",
    lastmessage: "How are you?",
    userProfilePicture: "images/Profile_Images/user_5.jpg",
  ),
  MessengerModel(
    username:"Arefin Nisho",
    lastmessage:"How are you?" ,
    userProfilePicture: "images/Profile_Images/user_6.jpg" ,
  ),
  MessengerModel(
    username:"Ziaul Faruq Apurba",
    lastmessage: "How are you?",
    userProfilePicture: "images/Profile_Images/user_7.jpg",
  ),
  MessengerModel(
    username:"Siam Ahmed",
    lastmessage: "How are you?",
    userProfilePicture:"images/Profile_Images/user_8.jpg" ,
  ),
  MessengerModel(
    username:"Masrafee Mortaza",
    lastmessage: "How are you?",
    userProfilePicture: "images/Profile_Images/user_9.jpg",
  ),

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
                  MaterialPageRoute(builder: (context)=>Profile(),
                  ),
              );
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
        backgroundColor: Color.fromRGBO(240, 240, 249, .6),
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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              child: Text(
                "Friends",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(21, 21, 21, 1),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: MediaQuery.of(context).size.height/10,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: imagesAvatar.length,
                  itemBuilder: (BuildContext context, int index){
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 7),
                    height: MediaQuery.of(context).size.height/5,
                    width: MediaQuery.of(context).size.width/5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("${imagesAvatar[index]}"),
                        fit: BoxFit.fitWidth,
                      ),
                      border: Border.all(
                        color:Color.fromRGBO(100, 100, 255, 1),
                        style: BorderStyle.solid,
                        width: 3,
                      ),
                    ),
                  );
                  },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 7,
              ),
              child: Text(
                "Messages",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(21, 21, 21, 1),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index){
                  return InkWell(
                    onTap: (){},
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      height: MediaQuery.of(context).size.height/10,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Stack(
                            overflow: Overflow.visible,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  "${messengerModel[index].userProfilePicture}"
                                ),
                              ),
                              Positioned(
                                  top: MediaQuery.of(context).size.height/15,
                                  left: MediaQuery.of(context).size.width/6.2,
                                  child: CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Color.fromRGBO(20, 255, 10, 1),
                                  ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            height: MediaQuery.of(context).size.height/10,
                            width: MediaQuery.of(context).size.width/1.4,
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                text: "${messengerModel[index].username}\n",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                    height: 1.3),
                                children: [
                              TextSpan(
                              text:
                              "last Message : ${messengerModel[index].lastmessage}",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                ),
                              ),
                        ],
                      ),
                    ),
                  )
                  ],
                  ),
                    ),
                  );

                },
              childCount: messengerModel.length,
            ),
          )
        ],
      ),
    );
  }
}
