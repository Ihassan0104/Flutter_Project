import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/profile.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 400,
          width: 350,
          child: Column(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromRGBO(237, 23, 37, 1),
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                  image: DecorationImage(
                    image: AssetImage("images/gov.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 350,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                      "Welcome to Bangladesh",
                    style: TextStyle(
                      color: Color.fromRGBO(0,109,76,1),
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                      fontStyle: FontStyle.normal,
                      wordSpacing: 5,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Profile(),),);
                },
                child: Container(
                  height: 50,
                  width: 120,
                  padding: EdgeInsets.symmetric(
                    horizontal: 6,),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 3,
                      style: BorderStyle.solid,
                      color: Color.fromRGBO(74, 110, 16, 1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Let's Start",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Color.fromRGBO(237, 23, 37, 1),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 20,
                        color: Color.fromRGBO(237, 23, 37, 1),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
