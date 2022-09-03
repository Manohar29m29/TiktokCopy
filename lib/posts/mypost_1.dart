import 'package:flutter/material.dart';
import 'package:tiktok/post_template.dart';

class MyPost1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'Mano',
      videoCaption: 'My tiktok clone in flutter',
      videoHastags: '#flutter #app #trending',
      numberOfLikes: '1.6M',
      numberOfComments: '24k',
      numberOfShares: '9765',
      userPost: Container(color: Colors.blueGrey,),
    );
  }
}