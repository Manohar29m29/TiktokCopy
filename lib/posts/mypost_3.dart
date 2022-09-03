import 'package:flutter/material.dart';
import 'package:tiktok/post_template.dart';

class MyPost3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'Jimmy',
      videoCaption: 'Top 20 amazing facts about colors',
      videoHastags: '#colors #facts #top10 #popular',
      numberOfLikes: '4.2M',
      numberOfComments: '56k',
      numberOfShares: '12k',
      userPost: Container(color: Colors.cyan,),
    );
  }
}