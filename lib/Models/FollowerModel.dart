
import 'package:flutter/cupertino.dart';

class FollowerModel{

  FollowerModel({

    @required this.username,
    @required this.imageURL,
    @required this.friends,

});

  String username;
  String imageURL;
  int friends;

}