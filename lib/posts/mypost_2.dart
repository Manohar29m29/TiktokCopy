import 'package:flutter/material.dart';
import 'package:tiktok/post_template.dart';

class MyPost2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'Tommy',
      videoCaption: 'How did he make that app?',
      videoHastags: '#apps #question #trending',
      numberOfLikes: '229k',
      numberOfComments: '2093',
      numberOfShares: '324',
      userPost: Container(color: Colors.pinkAccent,),
    );
  }
}