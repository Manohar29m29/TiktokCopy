import 'package:flutter/material.dart';
import 'package:tiktok/mybutton.dart';

class PostTemplate extends StatelessWidget {
  final String username;
  final String videoCaption;
  final String videoHastags;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;  // the post i.e the VIDEO / reel


  PostTemplate({
    required this.username,
    required this.videoCaption,
    required this.videoHastags,
    required this.numberOfLikes,
    required this.numberOfComments, 
    required this.numberOfShares, 
    required this.userPost
  }); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // user post
          userPost,      // put some video or image

          // user name , caption
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1,1),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@' + username,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10),
                  // caption
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: videoCaption),
                        TextSpan(
                          text: ' ' + videoHastags,
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          )
                        )
                      ]
                    )
                  )
                ],
              ),
            ),
          ),
          // buttons, n.o. count
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(

              alignment: Alignment(1,1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    icon: Icons.account_circle_sharp,
                    number: '' ,
                  ),
                  MyButton(
                    icon: Icons.favorite,
                    number: numberOfLikes,
                  ),
                  MyButton(
                    icon: Icons.chat_bubble,
                    number: numberOfComments,
                  ),
                  MyButton(
                    icon: Icons.send,
                    number: numberOfShares,
                  ),
                  MyButton(
                    icon: Icons.circle_outlined,
                    number: '',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}