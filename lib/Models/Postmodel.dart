import 'package:flutter/foundation.dart';


class PostModel{

  PostModel({
    @required this.username,
    @required this.profileImageURL,
    @required this.caption,
    @required this.address,
    @required this.postImageURL,
    @required this.likes,
});

  String username = '';
  String profileImageURL = '';
  String caption = '';
  String postImageURL = '';
  String address = '';
  int likes = 0;

}