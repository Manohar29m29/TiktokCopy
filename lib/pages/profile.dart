
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text('Manohar',style: TextStyle(color: Colors.black),),
            elevation: 0,
            leading: Icon(Icons.person_add, color: Colors.black),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.menu, color: Colors.black),
              )
            ],
          ),
          // profile photo
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle
            ),
          ),
          // user name
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '@mano',
              style: TextStyle(color: Colors.black, fontSize: 20)
            ),
          ),
          // following followers likes
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Column(children: [
                    Text(
                      '3287',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      )
                    ),
                    Text('Following',
                      style: TextStyle(
                        fontSize: 15
                      ),
                    )
                  ],),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(children: [
                    Text(
                      '475',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      )
                    ),
                    Text('Followers',
                      style: TextStyle(
                        fontSize: 15
                      ),
                    )
                  ],),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(children: [
                    Text(
                      '54',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      )
                    ),
                    Text('Likes',
                      style: TextStyle(
                        fontSize: 15
                      ),
                    )
                  ],)
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}