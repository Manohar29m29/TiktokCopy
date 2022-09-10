
import 'package:flutter/material.dart';
import 'package:tiktok/pages/Profiletabs/firsttab.dart';
import 'package:tiktok/pages/Profiletabs/secondtab.dart';
import 'package:tiktok/pages/Profiletabs/thirdtab.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text('Manohar',style: TextStyle(color: Colors.black),),
              elevation: 0,
              leading: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset('assets/icons/addppl.png',),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(19),
                  child: Image.asset('assets/icons/triple.png')
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
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(children: [
                      Text(
                        '327',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        )
                      ),
                      SizedBox(height: 5,),
                      Text('Following',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
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
                      SizedBox(height: 5,),
                      Text('Followers',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
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
                      SizedBox(height: 5,),
                      Text('   Likes   ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],)
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            // edit profile
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Text(
                    'Edit profile', 
                    style: TextStyle(color: Colors.black,fontSize: 17),
                  
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    //color: Color.fromARGB(255, 223, 104, 96)
                  ),
                ),
                
              ],
            ),
            SizedBox(height:10),
            Text('This is bio', style: TextStyle(fontSize: 15),),
            // default tab controller
            TabBar(
              tabs: [
                Tab(
                  child: Image.asset('assets/icons/first.png', height: 25,color: Colors.black,),
                ),
                Tab(
                  icon: Image.asset('assets/icons/second.png', height: 25,color: Colors.black),
                ),
                Tab(
                  icon: Image.asset('assets/icons/third.png', height: 25,color: Colors.black),
                )
              ],
            ),
            SizedBox(height:0),

            Expanded(
              child: TabBarView(
                children: [
                FirstTab(),
                SecondTab(),
                ThirdTab()
              ]
            )
          )
          ],
        ),
      ),
    );
  }
}