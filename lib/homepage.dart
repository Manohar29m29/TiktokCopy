import 'package:flutter/material.dart';
import 'package:tiktok/pages/home.dart';
import 'package:tiktok/pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  final List<Widget> _pages = [
    // WE HAVE ONLY 2 SEPERATE FILES FOR PAGES
    UserHomePage(),
    const Center(
      child: Text("Discover"),
    ),
    const Center(
      child: Text("Add"),
    ),
    const Center(
      child: Text("Inbox"),
    ),
    UserProfilePage()
  ];

  int _selectedIndex = 4;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Row(
        children: <Widget>[
          buildNav('assets/icons/home.png',0, 'Home'),
          buildNav('assets/icons/friends.png',1, 'Friends'),
          buildNav('assets/icons/plus.png',2 , ''),
          buildNav('assets/icons/inbox.png',3, 'Inbox'),
          buildNav('assets/icons/profile.png',4, 'Profile')
        ],
      ),
    );
  }
  Widget buildNav(String icon, index, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        
        child: Column(children: [
          SizedBox(height: 5),
          Image.asset(icon, color:index == _selectedIndex ? Colors.black : null ,height:index==2? 29: 25),
          Text(label, style: TextStyle(color: index == _selectedIndex ? Colors.black : Colors.grey), )
        ],),
        height: 50,
        width: MediaQuery.of(context).size.width/5,
        // decoration: BoxDecoration(color: ),
      ),
    );
  }
}

//backgroundColor: Colors.white,

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   onTap: _navigateBottomBar,
      //   type: BottomNavigationBarType.fixed,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Discover'),
      //     BottomNavigationBarItem(icon: Icon(Icons.add_box),label: ''),
      //     BottomNavigationBarItem(icon: Icon(Icons.chat_bubble),label: 'Inbox'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person),label:'Profile'),
      //   ],

      //),